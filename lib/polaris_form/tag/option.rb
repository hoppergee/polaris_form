module PolarisForm
  module Tag
    class Option < Base
      def render(&block)
        options = @options.stringify_keys
        content = if block_given?
          @template_object.capture(&block)
        else
          nil
        end
        content_tag("s-option", content, options)
      end
    end
  end
end
