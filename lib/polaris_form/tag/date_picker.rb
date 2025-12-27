module PolarisForm
  module Tag
    class DatePicker < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        empty_content_tag("s-date-picker", options)
      end
    end
  end
end
