require_relative "tag/base"
require_relative "tag/checkbox"
require_relative "tag/choice_list"
require_relative "tag/choice"
require_relative "tag/color_field"
require_relative "tag/color_picker"
require_relative "tag/date_field"
require_relative "tag/date_picker"
require_relative "tag/drop_zone"
require_relative "tag/email_field"
require_relative "tag/money_field"
require_relative "tag/number_field"
require_relative "tag/option_group"
require_relative "tag/option"
require_relative "tag/password_field"
require_relative "tag/search_field"
require_relative "tag/select"
require_relative "tag/switch"
require_relative "tag/text_area"
require_relative "tag/text_field"
require_relative "tag/url_field"

module PolarisForm
  module ViewHelpers
    def polaris_form_with(**options, &block)
      options[:builder] ||= PolarisForm::Builder
      form_with(**options, &block)
    end

    def polaris_form_for(record, options = {}, &block)
      options[:builder] ||= PolarisForm::Builder
      form_for(record, options, &block)
    end

    def s_checkbox_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::Checkbox.new(object_name, method, self, camelized_options).render
    end

    def s_choice_list_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::ChoiceList.new(object_name, method, self, camelized_options).render
    end

    def s_choice_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::Choice.new(object_name, method, self, camelized_options).render
    end

    def s_color_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::ColorField.new(object_name, method, self, camelized_options).render
    end

    def s_color_picker_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::ColorPicker.new(object_name, method, self, camelized_options).render
    end

    def s_date_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::DateField.new(object_name, method, self, camelized_options).render
    end

    def s_date_picker_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::DatePicker.new(object_name, method, self, camelized_options).render
    end

    def s_drop_zone_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::DropZone.new(object_name, method, self, camelized_options).render
    end

    def s_email_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::EmailField.new(object_name, method, self, camelized_options).render
    end

    def s_money_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::MoneyField.new(object_name, method, self, camelized_options).render
    end

    def s_number_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::NumberField.new(object_name, method, self, camelized_options).render
    end

    def s_option_group_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::OptionGroup.new(object_name, method, self, camelized_options).render
    end

    def s_option_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::Option.new(object_name, method, self, camelized_options).render
    end

    def s_password_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::PasswordField.new(object_name, method, self, camelized_options).render
    end

    def s_search_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::SearchField.new(object_name, method, self, camelized_options).render
    end

    def s_select_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::Select.new(object_name, method, self, camelized_options).render
    end

    def s_switch_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::Switch.new(object_name, method, self, camelized_options).render
    end

    def s_text_area_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::TextArea.new(object_name, method, self, camelized_options).render
    end

    def s_text_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::TextField.new(object_name, method, self, camelized_options).render
    end

    def s_url_field_tag(object_name, method, options = {})
      camelized_options = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      PolarisForm::Tag::UrlField.new(object_name, method, self, camelized_options).render
    end
  end
end
