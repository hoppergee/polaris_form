module PolarisForm
  class Railtie < ::Rails::Engine
    initializer "polaris_form.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include PolarisForm::ViewHelpers
      end
    end
  end
end
