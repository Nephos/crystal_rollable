require "./die"

module Rollable
  # Allow to create a die with a fixed value.
  # The die will only gives this value everytime.
  # (`.min`, `.max`, `.test`, `.average`)
  #
  # This is equivalent to
  # ```
  # Dice.new(n..n) # => FixedValue.new n
  # ```
  module FixedValue
    # Return a `Die` with only one face.
    def self.new(value : Int32)
      Rollable::Die.new(value..value)
    end
  end
end