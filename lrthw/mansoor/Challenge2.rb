class Greeting

  attr_accessor :name,:greeting
	
	def initialize(name,greeting)
	  @name = name
	  @greeting = greeting
	end
	
    def speak
    puts "#{@name} #{@greeting}"
    end
  
   	def speak
    puts "#{@name} #{@greeting}"
  	end
  
end

greeting1 = Greeting.new('tash','hey')
greeting1.speak

greeting2 = Greeting.new('mansoor','salam')
greeting2.speak