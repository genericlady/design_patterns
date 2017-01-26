require_relative "../config/environment.rb"

module WeatherStation
  def self.run
    weather_data = WeatherData.new
    current_display = CurrentConditionsDisplay.new(weather_data)

    # statistics_display = StatisticsDisplay.new(weather_data)
    # forecast_display = ForecastDisplay.new(weather_data)

    weather_data.set_measurements(80, 65, 30.4)
    weather_data.set_measurements(82, 70, 29.2)
    weather_data.set_measurements(78, 90, 29.2)

    current_display.display
  end
end

WeatherStation.run
