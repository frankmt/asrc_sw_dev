class Zoo
  attr_reader :name

  def initialize(name)
  	@name = name
  end
  def welcome
    puts "Welcome to Melbourne"
  end
  def enclosure(animal, population, health)
    puts "Animal Type: #{animal}, Population: #{population}, Health: #{health}"
  end
  def welcome
    puts "Welcome to San Diego"
  end
  def enclosure(animal, population, health)
    puts "Animal Type: #{animal}, Population: #{population}, Health: #{health}"
  end
end

zoo1 = Zoo.new("Melbourne")
zoo2 = Zoo.new("San Diego")

zoo1.welcome
zoo1.enclosure("Lion", 7, "excellent")
zoo1.enclosure("Polar Bear", 1, "bad")

zoo2.welcome
zoo2.enclosure("Tree Frog", 20, "good")


# Expected output:
# "Welcome to Melbourne Zoo!"
# "Animal Type: Lion, Population: 7, Health: excellent."
# "Animal Type: Polar Bear, Population: 1, Health: bad."
# "Welcome to San Diego Zoo!"
# "Animal Type: Tree Frog, Population: 20, Health: good."