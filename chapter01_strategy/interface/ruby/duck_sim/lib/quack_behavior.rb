module QuackBehavior
  def self.quack
    begin
      raise QuackError.new("QuackError"), "Missing quack behavior"
    rescue QuackError => error
      puts error.message
      puts "try defining an instance method of quack"
      puts error.object
    end
  end

  class QuackError < StandardError
    attr_reader :object

    def initialize(object)
      super(object)
    end
  end
end
