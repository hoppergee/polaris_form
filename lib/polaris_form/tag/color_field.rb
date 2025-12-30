module PolarisForm
  module Tag
    class ColorField < Base
      def render
        options = @options.stringify_keys
        options["value"] ||= validate_color_string(value)
        options["value"] = options.fetch("value") { value_before_type_cast }
        add_default_name_and_id(options)
        empty_content_tag("s-color-field", options)
      end

      private

      def validate_color_string(string)
        regex = /#[0-9a-fA-F]{6}/
        if regex.match?(string)
          string.downcase
        else
          "#000000"
        end
      end
    end
  end
end
