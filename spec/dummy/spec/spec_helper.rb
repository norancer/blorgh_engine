require 'factory_girl_rails'
RSpec.configure do |config|
  # These two settings work together to allow you to limit a spec run
  # to individual examples or groups you care about by tagging them with
  # `:focus` metadata. When nothing is tagged with `:focus`, all examples
  # get run.
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # config.include Devise::TestHelpers, type: :controller
  # config.extend ControllerMacros, type: :controller
  config.include FactoryGirl::Syntax::Methods
end
