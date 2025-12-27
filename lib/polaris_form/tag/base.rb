module PolarisForm
  module Tag
    class Base < ::ActionView::Helpers::Tags::Base
      def tag(type, options, *rest, &block)
        if object_has_errors?
          options["error"] = error_message
        end
        super(type, options, *rest, &block)
      end

      def content_tag(name, content_or_options_with_block = nil, options = nil, escape = true, &block)
        if object_has_errors?
          if block_given?
            content_or_options_with_block ||= {}
            content_or_options_with_block["error"] = error_message
          else
            options ||= {}
            options["error"] = error_message
          end
        end
        super(name, content_or_options_with_block, options, escape, &block)
      end

      def empty_content_tag(name, options = nil, escape = true, &block)
        if object_has_errors?
          options["error"] = error_message
        end
        tag_builder.content_tag_string(name, "", options, escape)
      end

      def error_wrapping(html_tag)
        html_tag
      end
    end
  end
end
