# frozen_string_literal: true

module TencentCloud
  module Common
    # TencentCloud exception
    class TencentCloudSDKException < StandardError
      attr_accessor :code, :message, :request_id

      def initialize(code = nil, message = nil, request_id = nil)
        @code = code
        @message = message
        @request_id = request_id
      end

      def to_s
        "[TencentCloudSDKError] Code=#{@code}, Message=#{@message}, RequestId=#{@request_id}"
      end
    end
  end
end
