require 'json'

module DarkSky
  class Client
    def get_temperature(lat, lang)
      response = Faraday.get "https://api.darksky.net/forecast/#{dark_sky_key}/#{lat},#{lang}"
      convert_farenheit_to_celsius (JSON.parse(response.body)['currently']['temperature'])
    end

    private

    def convert_farenheit_to_celsius(temperature)
      ((temperature - 32) / 1.8000).floor
    end

    def dark_sky_key
      @dark_sky_key ||= Rails.application.credentials.dark_sky_key
    end
  end
end
