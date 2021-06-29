# frozen_string_literal: true

require 'uri'
require 'net/http'

module TencentCloud
  module Common
    # common http request class
    class ApiRequset
      def initialize(scheme, host, port = nil, timeout = 60, proxy = nil)
        port = 443 if scheme == 'https'
        if proxy.nil?
          @conn = Net::HTTP.new(host, port)
        else
          p = URI(proxy)
          @conn = Net::HTTP.new(host, port, p.host, p.port, p.user, p.pass)
        end
        @conn.use_ssl = scheme == 'https'
        @conn.read_timeout = timeout
      end

      def send_request(request, keep_alive = false)
        uri = URI("#{request.scheme}://#{request.host}#{request.uri}")
        @conn.keep_alive_timeout = 20 if keep_alive
        @conn.start do |http|
          case request.method
          when 'GET'
            uri.query = request.data
            req = Net::HTTP::Get.new uri
          when 'POST'
            req = Net::HTTP::Post.new uri
            req.body = request.data
          else
            raise TencentCloudSDKException.new('ClientParamsError', 'Method only support (GET, POST)')
          end
          request.header.each do |k, v|
            req[k] = v
          end
          resp = http.request req
          BaseResponse.new(resp.code, resp.each_header.to_h, resp.read_body)
        end
      end
    end

    # base class of http request data
    class BaseRequest
      attr_accessor :scheme, :host, :method, :uri, :header, :data, :is_multipart

      def initialize(scheme = '', host = '', method = '', uri = '', header = {}, data = nil)
        @scheme = scheme
        @host = host
        @method = method
        @uri = uri
        @header = header
        @data = data
        @is_multipart = false
      end

      def to_s
        s = "Host: #{@host}\nMethod: #{method}\nUri: #{@uri}\nHeader: \n"
        @header ||= {}
        @header.each do |k, v|
          s += "#{k}: #{v}\n"
        end
        s += "Data: #{@data}\n"
      end
    end

    # base class of http response data
    class BaseResponse
      attr_accessor :code, :header, :data

      def initialize(code = 200, header = nil, data = "")
        @code = code
        @header = header
        @data = data
      end

      def to_s
        s = "Status: #{@code}\nHeader: \n"
        @header ||= {}
        @header.each do |k, v|
          s += "#{k}: #{v}\n"
        end
        s += "Data: #{@data}\n"
      end
    end
  end
end
