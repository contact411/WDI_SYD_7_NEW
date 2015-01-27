module Sims
  class Person

    attr_reader :location
    attr_accessor :hunger

    def initialize
      @location = 0
    end

    def walk(distance)
      @location += distance
    end

    def eat(food)
      @hunger -= food.weight
    end

  end
end