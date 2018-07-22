class WelcomeController < ApplicationController
  def index
  end

  private 

  def get_city_with_weather_in_city_service
    WeatherInCity.new.call(params[:city_name])
  end
end
