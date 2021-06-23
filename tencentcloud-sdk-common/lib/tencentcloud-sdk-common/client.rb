# frozen_string_literal: true

require 'time'
require 'uri'
require 'json'
require 'securerandom'
require 'digest'

module TencentCloud
  module Common
    # common client
    class AbstractClient
      include Log

      def initialize(credential, region, api_version, api_endpoint, sdk_version, profile = nil)
        raise TencentCloudSDKException.new('InvalidCredential', 'Credential is None or invalid') unless credential

        @credential = credential
        @region = region
        @api_version = api_version
        @endpoint = api_endpoint
        @sdk_version = sdk_version
        @profile = profile || ClientProfile.new
        @request = ApiRequset.new(@profile.http_profile.scheme, endpoint, nil, @profile.http_profile.req_timeout, @profile.http_profile.proxy)
      end

      def send_request(action, params, options = {})
        request_data = BaseRequest.new(@profile.http_profile.scheme, endpoint, @profile.http_profile.req_method, REQUEST_PATH)
        build_req(action, params, request_data, options)
        logger.debug("Request: [\n#{request_data.to_s}]") if @profile.debug
        resp = @request.send_request(request_data)
        logger.debug("Response: [\n#{resp.to_s}]") if @profile.debug
        raise TencentCloudSDKException.new('ServerNetworkError', resp.data) if resp.code != '200'

        resp.data
      end

      private

      REQUEST_PATH = '/'
      JSON_CONTENT = 'application/json'
      MULTIPART_CONTENT = 'multipart/form-data'
      FORM_URLENCODED_CONTENT = 'application/x-www-form-urlencoded'

      def endpoint
        @profile.http_profile.endpoint || @endpoint
      end

      def build_req(action, params, req, options = {})
        if %w[HmacSHA1 HmacSHA256].include? @profile.sign_method
          build_req_with_v1_signature(action, params, req)
        elsif @profile.sign_method == 'TC3-HMAC-SHA256' || options['IsMultipart']
          build_req_with_v3_signature(action, params, req, options)
        else
          raise TencentCloudSDKException.new('ClientError', 'Invalid signature method')
        end
      end

      def build_req_with_v1_signature(action, params, req)
        params = AbstractModel.format_params(nil, params)
        params['Action'] = action
        params['RequestClient'] = "SDK_RUBY_#{@sdk_version}"
        params['Nonce'] = Random.rand(1..1 << 32)
        params['Timestamp'] = Time.now.to_i
        params['Version'] = @api_version
        params['Region'] = @region
        params['Token'] = @credential.token if @credential.token
        params['SecretId'] = @credential.secret_id
        params['SignatureMethod'] = @profile.sign_method
        params['Language'] = @profile.language
        params['Signature'] = Sign.sign_v1(@profile.http_profile.req_method, endpoint, req.uri,
                                           params, @credential.secret_key, @profile.sign_method)
        req.data = URI.encode_www_form(params)
        req.header['Content-Type'] = FORM_URLENCODED_CONTENT
      end

      def build_req_with_v3_signature(action, params, req, options = {})
        content_type = req.method == 'GET' ? FORM_URLENCODED_CONTENT : JSON_CONTENT
        content_type = MULTIPART_CONTENT if options['IsMultipart']
        timestamp = Time.now.to_i
        req.header['Content-Type'] = content_type
        req.header['Host'] = endpoint
        req.header['X-TC-Action'] = action
        req.header['X-TC-Timestamp'] = timestamp
        req.header['X-TC-Version'] = @api_version
        req.header['X-TC-Region'] = @region
        req.header['X-TC-Language'] = @profile.language
        req.header['X-TC-Token'] = @credential.token if @credential.token
        req.header['X-TC-Content-SHA256'] = 'UNSIGNED-PAYLOAD' if @profile.unsigned_payload
        if req.method == 'GET'
          params = AbstractModel.format_params(nil, params)
          req.data = URI.encode_www_form(params)
          canonical_querystring = req.data
          payload = ''
        else
          case content_type
          when JSON_CONTENT
            req.data = JSON.generate(params, { 'ascii_only' => true, 'space' => ' ' })
          when MULTIPART_CONTENT
            binparas = options['binparas'] || []
            boundary = SecureRandom.hex
            req.header['Content-Type'] += '; boundary=' + boundary
            body = ''
            params.each do |k, v|
              body += "--#{boundary}\r\n"
              body += "Content-Disposition: form-data; name=\"#{k}\""
              if binparas.include? k
                body += "; filename=\"File\"\r\n"
              else
                body += "\r\n"
                if v.is_a?(Array) || v.is_a?(Hash)
                  v = JSON.generate(v, { 'ascii_only' => true, 'space' => ' ' })
                  body += "Content-Type: application/json\r\n"
                end
              end
              body += "\r\n#{v}\r\n"
            end
            body += "--#{boundary}--\r\n" unless body.empty?
            req.data = body
            # req.is_multipart = options['IsMultipart']
          else
            raise TencentCloudSDKException.new('ContentTypeError', "Unsupported content type: #{content_type}")
          end
          payload = req.data
          canonical_querystring = ''
        end
        payload = 'UNSIGNED-PAYLOAD' if @profile.unsigned_payload
        hashed_payload = Digest::SHA256.hexdigest(payload)

        authorization = Sign.sign_v3(content_type, endpoint, @profile.http_profile.req_method, req.uri,
                                     canonical_querystring, hashed_payload, req.header['X-TC-Timestamp'],
                                     @credential.secret_id, @credential.secret_key)
        req.header['Authorization'] = authorization
      end
    end
  end
end
