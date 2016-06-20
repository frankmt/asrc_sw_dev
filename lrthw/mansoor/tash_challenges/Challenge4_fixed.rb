class Zoo
  # You only need an attr_reader for the :name, because it's the only variable
  # you use in the initialize. We'll go over during class on Thursday.
  attr_reader :name, :population, :health

  def initialize(name)
    @name = name
    # The below variables are for the enclosure, not the zoo. They aren't needed.
    @population = population
    @health = health
  end

  def welcome
    puts "Welcome to San Diego Zoo!"
  end

  def enclosure(animal, population, health)
    puts "Animal Type: #{animal}, Population: #{population}, Health: #{health}"
  end
end

# I have changed the zoo name, but the output is not updated. Can you fix it?
# Then the challenge will be complete!
zoo = Zoo.new('Melbourne')
zoo.welcome
zoo.enclosure("Lion", 7, "excellent")
zoo.enclosure("Polar Bear", 1, "bad")
zoo.enclosure("Tree Frog", 20, "good")
