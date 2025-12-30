module PolarisForm
  module Tag
    class DatePicker < Base
      def render
        options = @options.stringify_keys
        options["value"] ||= format_date(value)
        options["value"] = options.fetch("value") { value_before_type_cast }
        add_default_name_and_id(options)
        empty_content_tag("s-date-picker", options)
      end

      private

      def format_date(value)
        value&.strftime("%Y-%m-%d")
      end
    end
  end
end
