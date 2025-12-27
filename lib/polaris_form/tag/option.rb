module PolarisForm
  module Tag
    class Option < Base
      def render
        options = @options.stringify_keys
        empty_content_tag("s-option", options)
      end
    end
  end
end
