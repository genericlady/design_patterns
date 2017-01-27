# make sure to run with cshoes script that should be in ~/bin

class ShoesObserver
  def self.run
    Shoes.app title: "MAIN" do
      background "#DFA"
      para "Welcome to #{self}"
      button "Should I do it?" do
        window title: "Answer" do
          para AngelPhrase.to_string + "\n"
          para DevilPhrase.to_string + "\n"
        end
      end
    end

  end
end

module Phrase
  def self.to_string
    raise "Define a to_string method!"
  end
end

module AngelPhrase
  extend Phrase

  def self.to_string
    "Don't do it, you might regret it!"
  end
end

module DevilPhrase
  extend Phrase

  def self.to_string
    "Come on, do it!"
  end
end

ShoesObserver.run
