# frozen_string_literal: true

require 'openssl'
require 'base64'

module TencentCloud
  module Common
    # sign class
    class Sign
      class << self
        def sign_v1(method, endpoint, path, data, secret_key, sign_method)
          sign = method + endpoint + path + '?'
          params = []
          data.sort.each do |item|
            params << "#{item[0]}=#{item[1]}"
          end
          sign += params.join('&')
          case sign_method
          when 'HmacSHA256'
            digest = OpenSSL::Digest.new('sha256')
          when 'HmacSHA1'
            digest = OpenSSL::Digest.new('sha1')
          else
            raise TencentCloudSDKException.new('signMethod invalid', 'signMethod only support (HmacSHA1, HmacSHA256)')
          end
          Base64.encode64(OpenSSL::HMAC.digest(digest, secret_key, sign))
        end

        def sign_v3(content_type, endpoint, method, uri, query, payload, timestamp, secret_id, secret_key)
          canonical_headers = "content-type:#{content_type}\nhost:#{endpoint}\n"
          signed_headers = 'content-type;host'
          canonical_request = [
            method,
            uri,
            query,
            canonical_headers,
            signed_headers,
            payload,
          ].join("\n")
          service = endpoint.split('.')[0]

          date = Time.at(timestamp).utc.strftime('%Y-%m-%d')
          credential_scope = date + '/' + service + '/' + 'tc3_request'
          algorithm = 'TC3-HMAC-SHA256'
          hashed_request_payload = Digest::SHA256.hexdigest(canonical_request)
          string_to_sign = [
            algorithm,
            timestamp,
            credential_scope,
            hashed_request_payload,
          ].join("\n")

          digest = OpenSSL::Digest.new('sha256')
          secret_date = OpenSSL::HMAC.digest(digest, 'TC3' + secret_key, date)
          secret_service = OpenSSL::HMAC.digest(digest, secret_date, service)
          secret_signing = OpenSSL::HMAC.digest(digest, secret_service, 'tc3_request')
          signature = OpenSSL::HMAC.hexdigest(digest, secret_signing, string_to_sign)
          "#{algorithm} Credential=#{secret_id}/#{credential_scope}, SignedHeaders=#{signed_headers}, Signature=#{signature}"
        end
      end
    end
  end
end
