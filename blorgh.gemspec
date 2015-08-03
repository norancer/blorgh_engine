$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blorgh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blorgh"
  s.version     = Blorgh::VERSION
  s.authors     = ["norancer"]
  s.email       = ["norancer@gmail.com"]
  # s.homepage    = "nothing"
  s.summary     = "Summary of Blorgh."
  s.description = "Description of Blorgh."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.2"
  s.add_dependency "rb-readline"
  s.add_dependency "draper"
  s.add_dependency 'factory_girl_rails'

  s.add_development_dependency 'spring'
  s.add_development_dependency 'spring-commands-rspec'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'fuubar'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'turnip'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-rcov'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'guard-rubocop'
  s.add_development_dependency 'scss_lint'
  s.add_development_dependency 'coffeelint'
  s.add_development_dependency 'rails_best_practices'
  s.add_development_dependency 'brakeman'
  s.add_development_dependency 'guard-brakeman'
  s.add_development_dependency "bullet"
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rails-erd'
  s.add_development_dependency 'html2slim'
end
