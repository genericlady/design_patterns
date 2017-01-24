module FlyBehavior

  def self.fly
    begin
      raise FlyError.new('FlyError'), "Missing fly behavior"
    rescue FlyError => error
      puts error.message
      puts "Try defining some fly behavior"
      puts error.object
    end
  end

  class FlyError < StandardError
    attr_reader :object
    
    def initialize(object)
      super(object)
    end
  end
end
