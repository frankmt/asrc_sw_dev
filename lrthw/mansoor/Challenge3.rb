class Introducer

  attr_reader :name, :job, :age
  
  def initialize(name, job, age)
      @name = name
	  @job = job
	  @age = age	    	
  end
  def introduce_person
    puts "Hello, I am #{@name}, #{@job}, #{@age} Years old."
  end
end
introducer = Introducer.new("Mesut Özil", "Pro Footballer", "27")

introducer.introduce_person