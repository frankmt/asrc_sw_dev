## Animal is-a object look at the extra credit
class Animal		
end

## ??
class Dog < Animal

  def initialize(name)
    ## ??
    @name = name
    puts "#{@name} vrummm"
  end
end

## ??
class Cat < Animal

  def initialize(name)
    ## ??
    @name = name
  end
end

## ??
class Person

  def initialize(name)
    ## ??
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## ??
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## ??
    @salary = salary
  end
	def salary_amount
	puts "{@name} = frank makes a 120000 dollars"
	end
end

## ??
class Fish
end

## ??
class Salmon < Fish
end

## ??
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## ??
satan = Cat.new("Satan")

## ??
mary = Person.new("Mary")

## ??
mary.pet = satan

## ??
frank = Employee.new("Frank", 120000)
frank.salary_amount #Frank makes 120000 dollars

## ??
frank.pet = rover

## ??
flipper = Fish.new()

## ??
crouse = Salmon.new()

## ??
harry = Halibut.new()