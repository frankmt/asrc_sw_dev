class Player
	
attr_accessor :name, :number, :position, :goals

  def initialize(name, number, position)
    @name = name
    @number = number
    @position = position
    @goals = 0
  end

  	def score_goal(number)
  	   	puts "#{@name}, #{@number}, #{@position} scored #{number} goals"
  	   			@goals += number
    end
    
  	def total_goals
  	  puts "#{@name}, #{@number}, #{@position} scored total #{@goals}"
  	end
end

ozil = Player.new("Mesut Ozil", 10, "Attacking Midfielder")

ozil.score_goal(1)
ozil.score_goal(1)
ozil.score_goal(100)

ozil.total_goals