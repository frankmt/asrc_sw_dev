require_relative "./dice.rb"
class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @latest_roll = 0
  end

  def take_turn
    dice = Dice.new
    @latest_roll = dice.roll
  end

  def latest_roll
    @latest_roll
  end

end
