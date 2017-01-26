class CurrentConditionsDisplay
  include Observer, DisplayElement

  def initialize(weather_data)
    @weather_data = weather_data
    @weather_data.register_observer(self)
  end

  def update(temperature, humidity, pressure)
    @temperature = temperature
    @humidity    = humidity
    @pressure    = pressure
  end

  def display

    puts "Current conditions: " + @temperature.to_s +
      "F degrees and " + @humidity.to_s + "% humidity"
  end
end
