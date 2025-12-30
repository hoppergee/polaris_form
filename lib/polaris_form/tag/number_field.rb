module PolarisForm
  module Tag
    class NumberField < Base
      def render
        options = @options.stringify_keys
        if range = options.delete("in") || options.delete("within")
          options.update("min" => range.min, "max" => range.max)
        end
        options["value"] = options.fetch("value") { value_before_type_cast }
        add_default_name_and_id(options)
        empty_content_tag("s-number-field", options)
      end
    end
  end
end
