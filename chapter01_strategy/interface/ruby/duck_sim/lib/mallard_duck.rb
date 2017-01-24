class MallardDuck < Duck
  def initialize
    @fly_behavior = FlyNoWay
    @quack_behavior = Quack
  end

  def display
    puts "I'm a real Mallard duck"
  end
end
