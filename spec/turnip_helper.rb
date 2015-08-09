require 'rails_helper'

# steps files path
Dir.glob('spec/acceptance/steps/*steps.rb') { |f| load f, true }
