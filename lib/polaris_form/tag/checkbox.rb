module PolarisForm
  module Tag
    class Checkbox < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id_for_value(options["checked"], options)
        empty_content_tag("s-checkbox", options)
      end
    end
  end
end
