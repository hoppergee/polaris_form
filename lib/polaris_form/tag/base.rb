module PolarisForm
  module Tag
    class Base < ::ActionView::Helpers::Tags::Base

      include Helpers::FormOptionsHelper

      def initialize(object_name, method_name, template_object, options = {})
        camelized_options = Utils.camelize_polaris_options(options)
        super(object_name, method_name, template_object, camelized_options)
      end

      def tag(type, options, *rest, &block)
        if object_has_errors?
          options["error"] = error_message
        end
        super(type, options, *rest, &block)
      end

      def content_tag(name, content_or_options_with_block = nil, options = nil, escape = true, &block)
        if object_has_errors?
          if block_given?
            content_or_options_with_block ||= {}
            content_or_options_with_block["error"] = error_message
          else
            options ||= {}
            options["error"] = error_message
          end
        end
        super(name, content_or_options_with_block, options, escape, &block)
      end

      def empty_content_tag(name, options = nil, escape = true, &block)
        if object_has_errors?
          options["error"] = error_message
        end
        tag_builder.content_tag_string(name, "", options, escape)
      end

      def error_wrapping(html_tag)
        html_tag
      end

      def select_content_tag(option_tags, options, html_options)
        html_options = html_options.stringify_keys
        if html_options["label"].blank?
          html_options["label"] = " "
          html_options["labelAccessibilityVisibility"] ||= "exclusive"
        end
        add_default_name_and_id(html_options)

        if placeholder_required?(html_options)
          raise ArgumentError, "include_blank cannot be false for a required field." if options[:include_blank] == false
          options[:include_blank] ||= true unless options[:prompt]
        end

        value = options.fetch(:selected) { value() }
        html_options["value"] = value
        content_tag("s-select", add_options(option_tags, options, value), html_options)
      end

      def add_options(option_tags, options, value = nil)
        if options[:include_blank]
          content = (options[:include_blank] if options[:include_blank].is_a?(String))
          label = (" " unless content)
          option_tags = tag_builder.content_tag_string("s-option", content, value: "", label: label) + "\n" + option_tags
        end

        if value.blank? && options[:prompt]
          tag_options = { value: "" }.tap do |prompt_opts|
            prompt_opts[:disabled] = true if options[:disabled] == ""
            prompt_opts[:selected] = true if options[:selected] == ""
          end
          option_tags = tag_builder.content_tag_string("s-option", prompt_text(options[:prompt]), tag_options) + "\n" + option_tags
        end

        option_tags
      end
    end
  end
end
