class Greeting
	attr_accessor :my_name
	
	def initialize(name)
	  @my_name = name	
	end

	def speak
	  puts "#{@my_name} Hi"
	end
	
end

class  A_Greeting < Greeting

	def speak
	 puts "#{@my_name} Hello"
	end
	
class B_Greeting < A_Greeting	

	def speak
	 puts "#{@my_name} Salam"
	end 
	
end

Tash = Greeting.new('Tash')
Tash.speak

Francisco = Greeting.new('Francisco')
Francisco.speak

Meer = A_Greeting.new('Meer')
Meer.speak

Mansoor = B_Greeting.new('Mansoor')
Mansoor.speak

end