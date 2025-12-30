module PolarisForm
  class Builder < ActionView::Helpers::FormBuilder
    def s_checkbox(method, options = {}, checked_value = '1', unchecked_value = '0')
      PolarisForm::Tag::Checkbox.new(@object_name, method, @template, checked_value, unchecked_value, objectify_options(options)).render
    end

    # def s_choice_list(method, options = {}, &block)
    #   @template.s_choice_list_tag(@object_name, method, objectify_options(options), &block)
    # end

    def s_color_field(method, options = {})
      PolarisForm::Tag::ColorField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_color_picker(method, options = {})
      PolarisForm::Tag::ColorPicker.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_date_field(method, options = {})
      PolarisForm::Tag::DateField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_date_picker(method, options = {})
      PolarisForm::Tag::DatePicker.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_drop_zone(method, options = {})
      PolarisForm::Tag::DropZone.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_email_field(method, options = {})
      PolarisForm::Tag::EmailField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_money_field(method, options = {})
      PolarisForm::Tag::MoneyField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_number_field(method, options = {})
      PolarisForm::Tag::NumberField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_password_field(method, options = {})
      PolarisForm::Tag::PasswordField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_search_field(method, options = {})
      PolarisForm::Tag::SearchField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_select(method, choices = nil, options = {}, html_options = {}, &block)
      PolarisForm::Tag::Select.new(@object_name, method, @template, choices, objectify_options(options), html_options).render(&block)
    end

    def s_switch(method, options = {}, checked_value = '1', unchecked_value = '0')
      PolarisForm::Tag::Switch.new(@object_name, method, @template, checked_value, unchecked_value, objectify_options(options)).render
    end

    def s_text_area(method, options = {})
      PolarisForm::Tag::TextArea.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_text_field(method, options = {})
      PolarisForm::Tag::TextField.new(@object_name, method, @template, objectify_options(options)).render
    end

    def s_url_field(method, options = {})
      PolarisForm::Tag::UrlField.new(@object_name, method, @template, objectify_options(options)).render
    end
  end
end
