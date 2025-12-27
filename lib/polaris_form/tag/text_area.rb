module PolarisForm
  module Tag
    class TextArea < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        empty_content_tag("s-text-area", options)
      end
    end
  end
end
