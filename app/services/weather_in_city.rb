class WeatherInCity
  def initialize(weather_client: DarkSky::Client.new, coordinates_service: CoordinatesService.new)
    @coordinates_service = coordinates_service
    @weather_client = weather_client
  end

  def call(city_name)
    lat, lang = coordinates_service.call(city_name)
    weather_client.call(lat, lang)
  end

  private

  attr_reader :weather_client, :coordinates_service
end

