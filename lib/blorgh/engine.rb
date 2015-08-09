# lib::Blorgh
module Blorgh
  # lib::Blorgh::Engine
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    initializer 'Blorgh.factories', after: 'factory_girl.set_factory_paths' do
      FactoryGirl.definition_file_paths.unshift File.expand_path('../../../spec/factories', __FILE__)
    end
  end
end
