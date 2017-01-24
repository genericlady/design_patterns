require_relative '../config/environment.rb'

class DuckSim
  def self.run
    mallard = MallardDuck.new
    mallard.perform_quack
    mallard.perform_fly

    model = ModelDuck.new
    model.perform_fly
    model.fly_behavior = FlyRocketPowered
    model.perform_fly
  end
end

DuckSim.run
