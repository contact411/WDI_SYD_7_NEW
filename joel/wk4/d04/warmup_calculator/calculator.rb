class Calculator
  def self.add(number_one, number_two)
    number_one + number_two
  end

  def self.subtract(number_one, number_two)
    number_one - number_two
  end

  def self.multiply(number_one, number_two)
    number_one * number_two
  end

  def self.divide(number_one, number_two)
    number_one / number_two
  end
end


# require_relative "./calculator"

# puts "2 plus 2 = #{Calculator.add(2, 2)}"
# puts "5 minus 1 = #{Calculator.subtract(5, 1)}"
# puts "10 times 10 = #{Calculator.multiply(10, 10)}"
# puts "500 divided by 50 = #{Calculator.divide(500, 50)}"