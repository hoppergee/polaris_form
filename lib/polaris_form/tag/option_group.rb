module PolarisForm
  module Tag
    class OptionGroup < Base
      def render
        options = @options.stringify_keys
        content_tag("s-option-group", options)
      end
    end
  end
end
