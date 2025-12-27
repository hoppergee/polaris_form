module PolarisForm
  module Tag
    class Select < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        content_tag("s-select", options)
      end
    end
  end
end
