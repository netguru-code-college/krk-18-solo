# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Type do
  let(:type) { describe_class.new }

  describe 'association' do
    it { should belong_to(:category) }
  end
end
