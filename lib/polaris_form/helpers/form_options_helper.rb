module PolarisForm
  module Helpers
    module FormOptionsHelper

      def s_options_for_select(container, selected = nil)
        return container if String === container

        selected, disabled = extract_selected_and_disabled(selected).map do |r|
          Array(r).map(&:to_s)
        end

        container.map do |element|
          html_attributes = option_html_attributes(element)
          text, value = option_text_and_value(element).map(&:to_s)

          html_attributes[:selected] ||= option_value_selected?(value, selected)
          html_attributes[:disabled] ||= disabled && option_value_selected?(value, disabled)
          html_attributes[:value] = value

          tag_builder.content_tag_string("s-option", text, html_attributes)
        end.join("\n").html_safe
      end

      def s_grouped_options_for_select(grouped_options, selected_key = nil, options = {})
        prompt  = options[:prompt]
        divider = options[:divider]

        body = "".html_safe

        if prompt
          body.safe_concat content_tag("s-option", prompt_text(prompt), value: "")
        end

        grouped_options.each do |container|
          html_attributes = option_html_attributes(container)

          if divider
            label = divider
          else
            label, container = container
          end

          html_attributes = { label: label }.merge!(html_attributes)
          body.safe_concat content_tag("s-option-group", options_for_select(container, selected_key), html_attributes)
        end

        body
      end

      def s_option_groups_from_collection_for_select(collection, group_method, group_label_method, option_key_method, option_value_method, selected_key = nil)
        collection.map do |group|
          option_tags = options_from_collection_for_select(
            value_for_collection(group, group_method), option_key_method, option_value_method, selected_key)

          content_tag("s-option-group", option_tags, label: value_for_collection(group, group_label_method))
        end.join.html_safe
      end

      def s_options_from_collection_for_select(collection, value_method, text_method, selected = nil)
        options = collection.map do |element|
          [value_for_collection(element, text_method), value_for_collection(element, value_method), option_html_attributes(element)]
        end
        selected, disabled = extract_selected_and_disabled(selected)
        select_deselect = {
          selected: extract_values_from_collection(collection, value_method, selected),
          disabled: extract_values_from_collection(collection, value_method, disabled)
        }

        s_options_for_select(options, select_deselect)
      end

    end
  end
end
