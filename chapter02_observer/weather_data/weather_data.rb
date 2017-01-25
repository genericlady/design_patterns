class Subject
  def register_observer(observer)
    raise "Implement a method to push an observer into an array"
  end

  def remove_observer(observer)
    raise "Implement a method to remove a specific observer from the array"
  end

  def notify_observers
    raise "Iterate through each observer and update each one"
  end
end

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
    @humidity = get_humidity
    @pressure = get_pressure
    @temp     = get_temperature
    
    measurements_changed
  end

  def measurements_changed
    notify_observers
  end

end

module Observer
  def update(temp, humidity, pressure)
  end
end

module DisplayElement
  def display
  end
end

class CurrentConditionsDisplay
  include Observer, DisplayElement

  def initialize(weather_data)
    @temperature
    @humidity
    @weather_data = weather_data
    @weather_data.register_observer(self)
  end

  def update(temperature, humidity)
    @temperature = temperature
    @humidity = humidity
  end

  def display
    puts "Current conditions: " + temperature
      + "F degrees and " + humidity + "% humidity"
  end
end
