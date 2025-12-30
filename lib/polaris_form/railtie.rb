module PolarisForm
  class Railtie < ::Rails::Engine
    initializer "polaris_form.helpers" do
      ActiveSupport.on_load(:action_view) do
        include PolarisForm::Helpers
      end
    end
  end
end
