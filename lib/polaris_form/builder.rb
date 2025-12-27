module PolarisForm
  class Builder < ActionView::Helpers::FormBuilder
    def s_checkbox(method, options = {})
      @template.s_checkbox_tag(@object_name, method, objectify_options(options))
    end

    def s_choice_list(method, options = {}, &block)
      @template.s_choice_list_tag(@object_name, method, objectify_options(options), &block)
    end

    def s_color_field(method, options = {})
      @template.s_color_field_tag(@object_name, method, objectify_options(options))
    end

    def s_color_picker(method, options = {})
      @template.s_color_picker_tag(@object_name, method, objectify_options(options))
    end

    def s_date_field(method, options = {})
      @template.s_date_field_tag(@object_name, method, objectify_options(options))
    end

    def s_date_picker(method, options = {})
      @template.s_date_picker_tag(@object_name, method, objectify_options(options))
    end

    def s_drop_zone(method, options = {})
      @template.s_drop_zone_tag(@object_name, method, objectify_options(options))
    end

    def s_email_field(method, options = {})
      @template.s_email_field_tag(@object_name, method, objectify_options(options))
    end

    def s_money_field(method, options = {})
      @template.s_money_field_tag(@object_name, method, objectify_options(options))
    end

    def s_number_field(method, options = {})
      @template.s_number_field_tag(@object_name, method, objectify_options(options))
    end

    def s_password_field(method, options = {})
      @template.s_password_field_tag(@object_name, method, objectify_options(options))
    end

    def s_search_field(method, options = {})
      @template.s_search_field_tag(@object_name, method, objectify_options(options))
    end

    def s_select(method, options = {}, &block)
      @template.s_select_tag(@object_name, method, objectify_options(options), &block)
    end

    def s_switch(method, options = {})
      @template.s_switch_tag(@object_name, method, objectify_options(options))
    end

    def s_text_area(method, options = {})
      @template.s_text_area_tag(@object_name, method, objectify_options(options))
    end

    def s_text_field(method, options = {})
      @template.s_text_field_tag(@object_name, method, objectify_options(options))
    end

    def s_url_field(method, options = {})
      @template.s_url_field_tag(@object_name, method, objectify_options(options))
    end
  end
end
