module PolarisForm
  module Tag
    class SearchField < Base
      def render
        options = @options.stringify_keys
        add_default_name_and_id(options)
        empty_content_tag("s-search-field", options)
      end
    end
  end
end
