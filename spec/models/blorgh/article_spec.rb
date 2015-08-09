require 'rails_helper'

RSpec.describe Blorgh::Article, type: :model do
  describe 'Respond methods:' do
    it { should respond_to :title }
  end
end
