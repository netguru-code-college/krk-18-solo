class AlcoholMatcherService
  def initialize
  end

  def call(temperature, category_name)
    find_by_category(temperature, category_name)
  end

  private

  def temperature_threshold(temperature)
    if temperature < 10
      :cold
    elsif temperature < 25
      :cool
    else 
      :hot
    end
  end 

  def find_by_category(temperature, category_name)
    Type.includes(:category).where(
      occasion: temperature_threshold(temperature), 'categories.name' => category_name
    )
  end
end

