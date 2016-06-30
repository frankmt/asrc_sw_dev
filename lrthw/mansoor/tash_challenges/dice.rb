class Dice

  def roll
    puts rand(1..6)
  end

end

dice = Dice.new
dice.roll
