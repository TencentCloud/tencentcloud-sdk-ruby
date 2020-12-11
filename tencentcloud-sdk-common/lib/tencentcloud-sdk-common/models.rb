# frozen_string_literal: true

module TencentCloud
  module Common
    # common model
    class AbstractModel
      def serialize
        flat(self)
      end

      def self.format_params(prefix = nil, params)
        d = {}
        case params
        when Hash
          params.each do |k, v|
            key = prefix ? "#{prefix}.#{k}" : k.to_s
            d.update(format_params(key, v))
          end
        when Array
          params.each_with_index do |v, i|
            key = prefix ? "#{prefix}.#{i}" : i.to_s
            d.update(format_params(key, v))
          end
        else
          d[prefix] = params
        end
        d
      end

      private

      def flat(obj)
        case obj
        when AbstractModel
          params = nil
          keys = obj.instance_variables
          keys.each do |k|
            value = obj.instance_variable_get k
            key = k.to_s.split('@').at 1
            next unless value

            r = flat(value)
            unless r.nil?
              params ||= {}
              params[key] = r
            end
          end
          params
        when Array
          arr = nil
          obj.each do |v|
            r = flat(v)
            unless r.nil?
              arr ||= []
              arr << r
            end
          end
          arr
        else
          obj
        end
      end
    end
  end
end
