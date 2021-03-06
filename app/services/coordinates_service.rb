# frozen_string_literal: true

class CoordinatesService
  def call(city_name)
    results = Geocoder.search(city_name)
    results.first.coordinates
  end
end
