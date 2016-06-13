class Player
 attr_accessor :name, :number, :position

 def initialize(name, number, position)
   puts name
   puts number
   puts position
 end
end
Player.new(“Cristiano”, 7, “Forward”)