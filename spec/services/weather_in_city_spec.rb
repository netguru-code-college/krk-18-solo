# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WeatherInCity do
  let(:service) do
    described_class.new(weather_client: weather_client, coordinates_service: coordinates_service)
  end

  let(:coordinates_service) { double('coordinates_service') }
  let(:weather_client) { double('weather_client') }

  describe '#call' do
    let(:city_name) { 'Paris' }

    subject { service.call(city_name) }

    it 'returns current temperature' do
      allow(coordinates_service)
        .to receive(:call)
        .with(city_name)
        .and_return([52.4015279, 16.8918892])
      allow(weather_client)
        .to receive(:get_temperature)
        .with(52.4015279, 16.8918892)
        .and_return(20)

      expect(subject).to eq 20
    end
  end
end
