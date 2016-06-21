class Zoo
  attr_reader :name
  
  def initialize(name)
  	@name = name
  end
  
  def welcome
    puts "Welcome to Melbourne"
  end
	      ​
  def enclosure(animal, population, health)
    puts "Animal Type: #{animal}, Population: #{population}, Health: #{health}"
  end  
end

zoo = Zoo.new("Melbourne")
​
zoo.welcome
zoo.enclosure("Lion", 7, "excellent")
zoo.enclosure("Polar Bear", 1, "bad")
zoo.enclosure("Tree Frog", 20, "good")
​
# Expected output:
# "Welcome to San Diego Zoo Melbourne!"
# "Animal Type: Lion, Population: 7, Health: excellent."
# "Animal Type: Polar Bear, Population: 1, Health: bad."
# "Animal Type: Tree Frog, Population: 20, Health: good."