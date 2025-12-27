module PolarisForm
  module Tag
    class ColorPicker < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        empty_content_tag("s-color-picker", options)
      end
    end
  end
end
