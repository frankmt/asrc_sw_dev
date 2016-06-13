class Player
	
attr_accessor :name, :number, :position, :goals

  def initialize(name, number, position)
    @name = name
    @number = number
    @position = position
    @goals = 0
  end

  	def score_goal(number)
  	   	puts "#{Mesut Ozil.name} #{10.number} #{Midfielder.position}"
  	   			ozil.score_goal = 0
    end
     
    def score_goal(number)
  	   	puts "#{Mesut Ozil.name} #{10.number} #{Midfielder.position}"
  	   			attack.ozil.score_goal = +1
     end
     
  	 def total_goals
  	  puts "#{Mesut Ozil.name} #{10.number} #{Midfielder.position}"
  	  		ozil.total_goals = 3
  	 end
end

ozil = Player.new("Mesut Ozil", 10, "Attacking Midfielder")

ozil.score_goal(0)
ozil.score_goal(1)

ozil.total_goals