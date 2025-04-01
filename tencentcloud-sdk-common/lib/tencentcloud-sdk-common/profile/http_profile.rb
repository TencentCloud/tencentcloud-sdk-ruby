# frozen_string_literal: true

module TencentCloud
  module Common
    # basic httpprofile
    class HttpProfile
      attr_accessor :scheme, :endpoint, :req_method, :req_timeout, :keep_alive, :proxy

      # Initializes a new HttpProfile with default values
      #
      # @param scheme [String] the protocol scheme (default: 'https')
      # @param endpoint [String, nil] the API endpoint (default: nil)
      # @param req_method [String] the HTTP request method (default: 'POST')
      # @param req_timeout [Integer] the request timeout in seconds (default: 60)
      # @param keep_alive [Boolean] whether to keep the connection alive (default: false)
      # @param proxy [String, nil] the proxy server (default: nil)
      def initialize(scheme = 'https', endpoint = nil, req_method = 'POST',
                     req_timeout = 60, keep_alive = false, proxy = nil)
        @scheme = scheme
        @endpoint = endpoint
        @req_method = req_method
        @req_timeout = req_timeout
        @keep_alive = keep_alive
        @proxy = proxy
      end
    end
  end
end
