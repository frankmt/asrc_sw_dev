class Zoo
  attr_reader :name, :population, :health

  def initialize(name)
    @name = name
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

zoo = Zoo.new('San Diego')
zoo.welcome
zoo.enclosure("Lion", 7, "excellent")
zoo.enclosure("Polar Bear", 1, "bad")
zoo.enclosure("Tree Frog", 20, "good")
