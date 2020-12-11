# frozen_string_literal: true

module TencentCloud
  module Common
    # common credential
    class Credential
      attr_accessor :secret_id, :secret_key, :token

      def initialize(secret_id, secret_key, token = nil)
        if secret_id.nil? || secret_id.strip.empty?
          raise TencentCloudSDKException.new('InvalidCredential', 'secret id should not be none or empty')
        elsif secret_id.strip != secret_id
          raise TencentCloudSDKException.new('InvalidCredential', 'secret id should not contain spaces')
        end

        @secret_id = secret_id

        if secret_key.nil? || secret_key.strip.empty?
          raise TencentCloudSDKException.new('InvalidCredential', 'secret id should not be none or empty')
        elsif secret_key.strip != secret_key
          raise TencentCloudSDKException.new('InvalidCredential', 'secret id should not contain spaces')
        end

        @secret_key = secret_key
        @token = token
      end
    end
  end
end
