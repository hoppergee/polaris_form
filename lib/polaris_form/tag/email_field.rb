module PolarisForm
  module Tag
    class EmailField < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        empty_content_tag("s-email-field", options)
      end
    end
  end
end
