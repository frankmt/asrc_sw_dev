class Calculator
  def add(number1,number2)
    result = number1 + number2
	puts "#{result}"
  end
end

calculator = Calculator.new
calculator.add(50,350)
