class CurrentConditionsDisplay
  include Observer, DisplayElement

  def initialize(weather_data)
    @weather_data = weather_data
    @weather_data.add_observer(self)
  end

  def update(observable_object)
    if observable_object.class == WeatherData
      weather_data = observable_object
      observable_object.add_observer(self)

      @temperature = observable_object.temperature
      @humidity    = observable_object.humidity
      @pressure    = observable_object.pressure

      display
    end
  end

  def display

    puts "Current conditions: " + @temperature.to_s +
      "F degrees and " + @humidity.to_s + "% humidity"
  end
end
