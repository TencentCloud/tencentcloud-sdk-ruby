# frozen_string_literal: true

module TencentCloud
  module Common
    # basic httpprofile
    class HttpProfile
      attr_accessor :scheme, :endpoint, :req_method, :req_timeout, :keep_alive, :proxy

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
