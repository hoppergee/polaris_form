module PolarisForm
  module Tag
    class PasswordField < Base
      def render
        @options = { value: nil }.merge!(@options)
        options = @options.stringify_keys
        options["value"] = options.fetch("value") { value_before_type_cast }
        add_default_name_and_id(options)
        empty_content_tag("s-password-field", options)
      end
    end
  end
end
