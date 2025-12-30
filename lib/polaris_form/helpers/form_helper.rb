require "polaris_form/tag/base"
require "polaris_form/tag/checkable"
require "polaris_form/tag/checkbox"
require "polaris_form/tag/choice_list"
require "polaris_form/tag/choice"
require "polaris_form/tag/color_field"
require "polaris_form/tag/color_picker"
require "polaris_form/tag/date_field"
require "polaris_form/tag/date_picker"
require "polaris_form/tag/drop_zone"
require "polaris_form/tag/email_field"
require "polaris_form/tag/money_field"
require "polaris_form/tag/number_field"
require "polaris_form/tag/option_group"
require "polaris_form/tag/option"
require "polaris_form/tag/password_field"
require "polaris_form/tag/search_field"
require "polaris_form/tag/select"
require "polaris_form/tag/switch"
require "polaris_form/tag/text_area"
require "polaris_form/tag/text_field"
require "polaris_form/tag/url_field"

module PolarisForm
  module Helpers
    module FormHelper
      def polaris_form_with(**options, &block)
        options[:builder] ||= PolarisForm::Builder
        form_with(**options, &block)
      end

      def polaris_form_for(record, options = {}, &block)
        options[:builder] ||= PolarisForm::Builder
        form_for(record, options, &block)
      end

      def s_checkbox_tag(name, value = "1", checked = false, options = {})
        options[:include_hidden] = false
        options[:checked] = checked
        PolarisForm::Tag::Checkbox.new(nil, name, self, value, nil, options).render
      end

      # def s_choice_list_tag(name, options = {}, &block)
      #   PolarisForm::Tag::ChoiceList.new(nil, name, self, options).render(&block)
      # end

      def s_choice_tag(options = {}, &block)
        PolarisForm::Tag::Choice.new(nil, nil, self, options).render(&block)
      end

      def s_color_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::ColorField.new(nil, name, self, options).render
      end

      def s_color_picker_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::ColorPicker.new(nil, name, self, options).render
      end

      def s_date_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::DateField.new(nil, name, self, options).render
      end

      def s_date_picker_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::DatePicker.new(nil, name, self, options).render
      end

      def s_drop_zone_tag(name, options = {})
        PolarisForm::Tag::DropZone.new(nil, name, self, options).render
      end

      def s_email_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::EmailField.new(nil, name, self, options).render
      end

      def s_money_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::MoneyField.new(nil, name, self, options).render
      end

      def s_number_field_tag(name, value = nil, options = {})
        PolarisForm::Tag::NumberField.new(nil, name, self, options).render
      end

      def s_option_group_tag(options = {}, &block)
        PolarisForm::Tag::OptionGroup.new(nil, nil, self, options).render(&block)
      end

      def s_option_tag(options = {}, &block)
        PolarisForm::Tag::Option.new(nil, nil, self, options).render(&block)
      end

      def s_password_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::PasswordField.new(nil, name, self, options).render
      end

      def s_search_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::SearchField.new(nil, name, self, options).render
      end

      # def s_select_tag(name, option_tags = nil, options = {}, &block)
      #   PolarisForm::Tag::Select.new(nil, name, self, options).render(&block)
      # end

      def s_switch_tag(name, value = "1", checked = false, options = {})
        options[:include_hidden] = false
        options[:checked] = checked
        PolarisForm::Tag::Switch.new(nil, name, self, value, nil, options).render
      end

      def s_text_area_tag(name, content = nil, options = {})
        options[:value] = content
        PolarisForm::Tag::TextArea.new(nil, name, self, options).render
      end

      def s_text_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::TextField.new(nil, name, self, options).render
      end

      def s_url_field_tag(name, value = nil, options = {})
        options[:value] = value
        PolarisForm::Tag::UrlField.new(nil, name, self, options).render
      end
    end
  end
end