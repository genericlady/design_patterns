class WeatherData < Subject
  def initialize
    @observers = []
    @temperature
    @humidity
    @pressure
  end

  def register_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.remove(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(@temperature, @humidity, @pressure)
    end
  end

  def set_measurements(temperature, humidity, pressure)
    @humidity    = humidity
    @pressure    = pressure
    @temperature = temperature

    measurements_changed
  end

  def measurements_changed
    notify_observers
  end

end

