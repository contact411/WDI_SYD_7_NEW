require "sims/person"
require "sims/food"
describe Sims::Person do
  let(:person) { Sims::Person.new }

  describe ".walk" do
    it "changes location" do
#  Litmus test to make sure RSPec is working
#     expect(2).to eq(2)

      # GIVEN  ->  removed after ln:4 let(:person) was created
      # person = Sims::Person.new

      # WHEN
      person.walk(4.5)
      person.walk(10)

      # THEN
      expect(person.location).to eq(14.5)
    end
  end

  describe ".eat" do
    it "changes hunger" do
      # Removed due to line 4
      # person = Sims::Person.new
      let(:food) { Sims::Food.new }
      
      food = Sims::Food.new
      person.hunger = 10
      food.weight = 2

      person.eat(food)

      expect(person.hunger).to eq(8)

    end
  end
end
