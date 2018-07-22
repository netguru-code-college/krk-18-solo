require 'json'

module DarkSky
  class Client
    # metoda zwraca temperature w formie INT
    # TODO przeniesc key to zmiennych srodowiskowych / config
    KEY = "6a9cdcf480ea84b91028a6e52634c8da"
    
    def get_temperature(lat, lang)
      response = Faraday.get "https://api.darksky.net/forecast/#{KEY}/#{lat},#{lang}"
      convert_farenheit_to_celsius (JSON.parse(response.body)['currently']['temperature'])
    end

    def convert_farenheit_to_celsius(temperature)
      ((temperature - 32) / 1.8000).floor
    end
  end
end
