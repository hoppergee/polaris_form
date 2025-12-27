module PolarisForm
  module Tag
    class Choice < Base
      def render
        options = @options.stringify_keys
        empty_content_tag("s-choicelist", options)
      end
    end
  end
end
