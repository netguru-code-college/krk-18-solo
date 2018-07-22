class WelcomeController < ApplicationController
  def index
    # binding.pry
    # @city_name = params['city']['name']
  end

  def get_city
    @temperature = get_city_with_weather_in_city_service
    redirect_to 'welcome/show', city_name: params[:city][:name], temperature: @temperature
  end

  def show
    
  end

  private 

  def get_city_with_weather_in_city_service
    WeatherInCity.new.call(params[:city][:name])
  end
end
