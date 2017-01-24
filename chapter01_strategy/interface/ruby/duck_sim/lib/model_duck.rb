class ModelDuck < Duck

  def initialize
    @fly_behavior = FlyNoWay
    @quack_behavior = Quack
  end

  def display
    puts "I'm a model duck"
  end

end
