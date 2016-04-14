class Vehicle 
	def initialize(name , topspeed ="230 m/h")
		@name = name
		@topspeed = topspeed
		@type = "Vehicle"
	end
	
	attr_reader :name , :topspeed , :type
end
class Car < Vehicle
	def initialize
		@type = "Porche"
		super(topspeed)
	end
	
	attr_reader :type
end

car = Car.new
vehicle = Vehicle.new("Porche" , "220mh")
puts "Vehicle topspeed"
puts vehicle.topspeed
puts "Car topspeed"
puts car.topspeed

	 
	
	
	 