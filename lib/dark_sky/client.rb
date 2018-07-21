require 'json'

module DarkSky
  class Client
    #  metoda zwraca temperature w formie INT
    # TODO przeniesc key to zmiennych srodowiskowych / config
    KEY = "6a9cdcf480ea84b91028a6e52634c8da"
    
    def get_temperature(lat, lang)
      response = Faraday.get "https://api.darksky.net/forecast/#{KEY}/#{lat},#{lang}"
      JSON.parse(response.body)['currently']['temperature']
    end
  end
end
