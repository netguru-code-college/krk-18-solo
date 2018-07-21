require 'rails_helper'

RSpec.describe Category do
  let(:category){ describe_class.new }

  describe 'association' do
    it { should have_many(:types) }
  end
end
