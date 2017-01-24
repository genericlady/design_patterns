class Beverage
  attr_reader :description
  def initialize
    @description = "Unknown Beverage"
  end

  def cost
    raise "There is no cost, try defining one for #{self.class.name}"
  end
end

class CondimentDecorator < Beverage
  attr_reader :description
end

class Espresso < Beverage
  def initialize
    @description = "Espresso"
  end

  def cost
    1.99
  end
end

class DarkRoast < Beverage
  def initialize
    @description = "Dark Roast"
  end

  def cost
    1.99
  end
end

class HouseBlend < Beverage
  def initialize
    @description = "House Blend Coffee"
  end

  def cost
    0.89
  end
end

class Mocha < CondimentDecorator
  def initialize(beverage)
    @beverage = beverage
  end

  def description
    beverage.description + ", Mocha"
  end

  def cost
    beverage.cost + 0.20
  end

  private
  def beverage
    @beverage
  end
end

class Soy < CondimentDecorator
  def initialize(beverage)
    @beverage = beverage
  end

  def description
    beverage.description + ", Soy"
  end

  def cost
    beverage.cost + 0.20
  end

  private
  def beverage
    @beverage
  end
end


class Whip < CondimentDecorator
  def initialize(beverage)
    @beverage = beverage
  end

  def description
    beverage.description + ", Whip"
  end

  def cost
    beverage.cost + 0.20
  end

  private
  def beverage
    @beverage
  end
end

class StarbuzzCoffee
  def self.run
    beverage = Espresso.new
    puts beverage.description +
      " $" +
      beverage.cost.to_s

    beverage2 = DarkRoast.new
    beverage2 = Mocha.new(beverage2)
    beverage2 = Mocha.new(beverage2)
    beverage2 = Whip.new(beverage2)
    puts beverage2.description +
      " $" +
      beverage2.cost.to_s


    beverage3 = HouseBlend.new
    beverage3 = Soy.new(beverage3)
    beverage3 = Mocha.new(beverage3)
    beverage3 = Whip.new(beverage3)
    puts beverage3.description +
      " $" +
      beverage3.cost.to_s

  end
end

StarbuzzCoffee.run
