# frozen_string_literal: true

require 'logger'

module TencentCloud
  module Common
    # common logger
    module Log
      def logger
        @logger ||= Logger.new(STDOUT)
      end
    end
  end
end
