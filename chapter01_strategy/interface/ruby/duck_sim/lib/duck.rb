class Duck
  attr_accessor :fly_behavior, :quack_behavior

  def initialize(fly_behavior=nil, quack_behavior=nil)
    @fly_behavior = fly_behavior || FlyBehavior
    @quack_behavior = quack_behavior || QuackBehavior
  end

  def display
  end

  def perform_fly
    fly_behavior.fly
  end

  def perform_quack
    quack_behavior.quack
  end

  def swim
    puts("All ducks float, even decoys!")
  end

end
