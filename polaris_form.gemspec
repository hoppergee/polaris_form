require_relative "lib/polaris_form/version"

Gem::Specification.new do |spec|
  spec.name        = "polaris_form"
  spec.version     = PolarisForm::VERSION
  spec.authors     = [ "Hopper Gee" ]
  spec.email       = [ "hopper.gee@hey.com" ]
  spec.homepage    = "https://github.com/hoppergee/polaris_form"
  spec.summary     = "A Rails form builder that renders forms using Shopify Polaris web components"
  spec.description = "polaris_form brings Shopify's Polaris design system to Rails forms by providing a drop-in form builder that outputs Polaris web components under the hood."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hoppergee/polaris_form"
  spec.metadata["changelog_uri"] = "https://github.com/hoppergee/polaris_form/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0"
end
