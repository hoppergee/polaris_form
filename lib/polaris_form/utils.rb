module PolarisForm
  module Utils
    module_function

    def camelize_polaris_options(options)
      options.transform_keys do |key|
        if key.to_s.in?([ "skip_default_ids", "allow_method_names_outside_object" ])
          key
        else
          key.to_s.camelize(:lower).to_sym
        end
      end
    end
  end
end
