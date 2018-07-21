require 'spec_helper'

RSpec.describe DarkSky::Client do 
  let(:client){ described_class.new }

  describe "#get_temperature" do
    let(:response) do
      double('response', body: response_body)
    end

    let(:response_body) do
      {
        "latitude": 42.3601,
        "longitude": -71.0589,
        "timezone": "America/New_York",
        "currently": {
          "time": 1509993277,
          "summary": "Drizzle",
          "icon": "rain",
          "nearestStormDistance": 0,
          "precipIntensity": 0.0089,
          "precipIntensityError": 0.0046,
          "precipProbability": 0.9,
          "precipType": "rain",
          "temperature": 60,
          "apparentTemperature": 66.31,
          "dewPoint": 60.77,
          "humidity": 0.83,
          "pressure": 1010.34,
          "windSpeed": 5.59,
          "windGust": 12.03,
          "windBearing": 246,
          "cloudCover": 0.7,
          "uvIndex": 1,
          "visibility": 9.84,
          "ozone": 267.44
        }
      }.to_json
    end

    subject { client.get_temperature(42.3601, -71.0589) }
    it 'returns temperature for given localization' do
      allow(Faraday).to receive(:get).and_return(response)
      expect(subject).to eq 60
    end
  end
end
