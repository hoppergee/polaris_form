module PolarisForm
  module Tag
    class DropZone < Base
      def render
        options = @options.stringify_keys
        if options["label"].blank?
          options["label"] = " "
          options["labelAccessibilityVisibility"] ||= "exclusive"
        end
        add_default_name_and_id(options)
        empty_content_tag("s-drop-zone", options)
      end
    end
  end
end
