require_relative "./dice.rb"
class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @total_roll = 0
  end

  def take_turn
    dice = Dice.new
    @total_roll += dice.roll
  end

  def total_roll
    @total_roll
  end

end
