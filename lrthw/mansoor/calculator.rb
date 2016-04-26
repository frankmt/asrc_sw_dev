class Calculator
  def add(number1,number2)
    result = number1 + number2 
	puts "#{result}" 
  end
  def subtract(number_1, number_2, number_3)
   result = number_1 - number_2 - number_3
   puts "#{result}"
  end
  def multiply(number_1, number_2)
   result = number_1 * number_2
   puts "#{result}"
  end
  def divide(number_1, number_2)
   result = number_1 / number_2
   puts "#{result}"
  end
end


calculator = Calculator.new

#4
calculator.add(2,2) 

#3
calculator.subtract(10,2,5)

#12
calculator.multiply(2,6)

#2
calculator.divide(10,5)