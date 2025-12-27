module PolarisForm
  module Tag
    class Select < Base
      def render(&block)
        options = @options.stringify_keys
        add_default_name_and_id(options)
        content = if block_given?
          @template_object.capture(&block)
        else
          nil
        end
        content_tag("s-select", content, options)
      end
    end
  end
end
