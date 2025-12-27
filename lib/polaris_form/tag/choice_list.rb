module PolarisForm
  module Tag
    class ChoiceList < Base
      def render(&block)
        options = @options.stringify_keys
        add_default_name_and_id(options)
        content = if block_given?
          @template_object.capture(&block)
        else
          nil
        end
        content_tag("s-choice-list", content, options)
      end
    end
  end
end
