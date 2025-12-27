module PolarisForm
  module Tag
    class Choice < Base
      def render(&block)
        options = @options.stringify_keys
        content = if block_given?
          @template_object.capture(&block)
        else
          nil
        end
        content_tag("s-choice", content, options)
      end
    end
  end
end
