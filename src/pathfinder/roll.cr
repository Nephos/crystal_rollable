require "./die"
require "./fixed_value"
require "./dice"

module Pathfinder
  class Roll
    @dice : Array(Dice)

    def initialize(@dice)
    end

    def self.parse(str : String, list : Array(Dice) = Array(Dice).new) : Array(Dice)
      # rest = Pathfinder::Dice.consume(str) { |dice| list << dice }
      # return list
    end

    {% for ft in ["min", "max", "test"] %}
    def {{ ft.id }} : Int32
      @dice.reduce(0) { |r, l| r + l.{{ ft.id }} }
    end
    {% end %}

    def average : Float64
      @dice.reduce(0.0) { |r, l| r + l.average }
    end
  end
end