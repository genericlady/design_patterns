class WeatherData
  include Observable

  def initialize
    @temperature
    @humidity
    @pressure
  end

  def set_measurements(temperature, humidity, pressure)
    @humidity    = humidity
    @pressure    = pressure
    @temperature = temperature

    measurements_changed
  end

  def measurements_changed
    changed
    notify_observers(self)
  end

  def temperature
    @temperature || 0
  end

  def humidity
    @humidity || 0
  end

  def pressure
    @pressure || 0
  end

end

