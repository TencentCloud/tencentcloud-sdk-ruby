# frozen_string_literal: true

module TencentCloud
  module Common
    # basic httpprofile
    class ClientProfile
      attr_accessor :http_profile, :sign_method, :language, :unsigned_payload, :debug

      # Initializes a new ClientProfile with default values
      #
      # @param sign_method [String] the signing method (default: 'TC3-HMAC-SHA256')
      # @param http_profile [HttpProfile, nil] the HTTP profile (default: nil)
      # @param language [String] the language for responses (default: 'zh-CN')
      # @param debug [Boolean] whether to enable debug mode (default: false)
      def initialize(sign_method = 'TC3-HMAC-SHA256', http_profile = nil,
                     language = 'zh-CN', debug = false)
        @sign_method = sign_method
        @http_profile = http_profile || HttpProfile.new
        valid_language = %w[zh-CN en-US]
        unless valid_language.include? language
          raise TencentCloudSDKException.new('ClientError', "Language invalid, choices: #{valid_language}")
        end

        @language = language
        @debug = debug
        @unsigned_payload = false
      end
    end
  end
end
