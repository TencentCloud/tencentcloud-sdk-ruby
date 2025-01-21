# frozen_string_literal: true
require 'time'

module TencentCloud
  module Common
    class OIDCCredential
      SES_NAME = 'tencentcloud-ruby-sdk-'
      SES_DUR = 7200
      API_VERSION = '2018-08-13'
      API_ENDPOINT = 'sts.tencentcloudapi.com'
      API_ACTION = 'AssumeRoleWithWebIdentity'
      SDK_VERSION = 'CLB_' + File.read(File.expand_path('../VERSION', __dir__)).strip

      attr_accessor :secret_id, :secret_key, :token

      def initialize
        @expire_t = 0
        initialize_args
      end

      def credential
        refresh
        [@secret_id, @secret_key, @token]
      end

      def initialize_args
        @region = ENV['TKE_REGION']
        @provider_id = ENV['TKE_PROVIDER_ID']
        token_file = ENV['TKE_WEB_IDENTITY_TOKEN_FILE']
        @role_arn = ENV['TKE_ROLE_ARN']
        @ses_name = SES_NAME + (Time.now.to_r * 1_000).to_i.to_s
        @ses_dur = SES_DUR

        if @region.nil? || @provider_id.nil? || token_file.nil? || @role_arn.nil? || @ses_name.nil? || @ses_dur.nil?
          raise TencentCloudSDKException.new('InvalidCredential', 'env TKE_REGION, TKE_PROVIDER_ID, TKE_WEB_IDENTITY_TOKEN_FILE, TKE_ROLE_ARN not exist')
        end

        @token = File.read(token_file).strip
      end

      def refresh
        if @expire_t - Time.now.to_i > SES_DUR / 10
          puts "not refresh #{@expire_t}, #{Time.now.to_i}"
          return
        end
        puts "refresh #{@expire_t}, #{Time.now.to_i}"

        initialize_args

        client = AbstractClient.new(nil, @region, API_VERSION, API_ENDPOINT, SDK_VERSION, nil)

        req = {
          'ProviderId': @provider_id,
          'WebIdentityToken': @token,
          'RoleArn': @role_arn,
          'RoleSessionName': @ses_name,
          'DurationSeconds': @ses_dur,
        }
        response = JSON.parse(client.send_request(API_ACTION, req))
        if response['Response'].key?('Error')
          code = response['Response']['Error']['Code']
          message = response['Response']['Error']['Message']
          reqid = response['Response']['RequestId']
          raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
        end

        @secret_id = response['Response']['Credentials']['TmpSecretId']
        @secret_key = response['Response']['Credentials']['TmpSecretKey']
        @token = response['Response']['Credentials']['Token']
        @expire_t = response['Response']['ExpiredTime']
      end
    end
  end
end
