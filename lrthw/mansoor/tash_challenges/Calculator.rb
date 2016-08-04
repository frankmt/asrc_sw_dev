class Calculator
  attr_reader :number1, :number2
  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  def calculate(type_of_calculation)
    case type_of_calculation
    when "add"
       result = number1 + number2
       puts "#{result}"
    when "subtract"
       result = number1 - number2
       puts "#{result}"
    when "multiply"
      result = number1 * number2
      puts "#{result}"
    when "divide"
      result = number1.fdiv(number2)
      puts "#{result}"
    end
 end
end

calculator = Calculator.new(50,350)
calculator.calculate("add")
calculator.calculate("subtract")
calculator.calculate("multiply")
calculator.calculate("divide")
