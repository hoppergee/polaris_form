module PolarisForm
  module Tag
    class DropZone < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        empty_content_tag("s-drop-zone", options)
      end
    end
  end
end
