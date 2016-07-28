class Calculator
  attr_reader :number1, :number2
  def initialize(number1, number2)
    @number1 = number1
    @number2= number2
  end

  def calculate(type_of_calculation)
    if type_of_calculation == "add"
      result = number1 + number2
      puts "#{result}"
    elsif type_of_calculation == "subtract"
       result = number1 - number2
      puts "#{result}"
    elsif type_of_calculation == "multiply"
      result = number1 * number2
      puts "#{result}"
   elsif  type_of_calculation == "divide"
    result = number1 / number2
    puts "#{result}"
   end
end
  #
  # def add
  #   result = number1 + number2
	# puts "#{result}"
  # end
  # def subtract
  #   result = number1 - number2
  #   puts "#{result}"
  # end
end

calculator = Calculator.new(50,350)
calculator.calculate("add")
calculator.calculate("subtract")
calculator.calculate("multiply")
calculator.calculate("divide")

# On line 19, convert number1 and number2 to float numbers before doing the division.

INTEGER
FLOAT

# Convert the if condition in the calculate method to a case statement: http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/
