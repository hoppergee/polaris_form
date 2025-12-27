module PolarisForm
  module Tag
    class OptionGroup < Base
      def render(&block)
        options = @options.stringify_keys
        content = if block_given?
          @template_object.capture(&block)
        else
          nil
        end
        content_tag("s-option-group", content, options)
      end
    end
  end
end
