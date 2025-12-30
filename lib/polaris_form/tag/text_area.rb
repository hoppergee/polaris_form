module PolarisForm
  module Tag
    class TextArea < Base
      def render
        options = @options.stringify_keys
        options["value"] = options.fetch("value") { value_before_type_cast }
        add_default_name_and_id(options)
        empty_content_tag("s-text-area", options)
      end
    end
  end
end
