module PolarisForm
  module Tag
    class ChoiceList < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        content_tag("s-choice-list", options)
      end
    end
  end
end
