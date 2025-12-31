module PolarisForm
  module Tag
    class TextField < Base
      def render
        options = @options.stringify_keys
        options["value"] = options.fetch("value") { value_before_type_cast }
        if options["label"].blank?
          options["label"] = " "
          options["labelAccessibilityVisibility"] ||= "exclusive"
        end
        add_default_name_and_id(options)
        empty_content_tag("s-text-field", options)
      end
    end
  end
end
