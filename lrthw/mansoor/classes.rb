class Car
	attr_accessor :my_name
	
	def initialize(name)
	  @my_name = name	
	end

	def start
	  puts "#{@my_name} vrummm"
	end
	
end

class RacingCar < Car

	def start
	 puts "#{@my_name} vrumm vrumm"
	end
	
end

bmw = Car.new('bmw')
bmw.start

mercedes = Car.new('mercedes')
mercedes.start

bmw.my_name = "fiat"
bmw.start

ferrari = RacingCar.new('ferrari')
ferrari.start