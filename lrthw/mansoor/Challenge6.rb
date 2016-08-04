class Dice

  def roll
    @sides = 1 + rand(6)
  end
  def showing
    @sides
    
  end

end

dice = Dice.new{1 + rand(6)}
dice.roll
puts dice.showing