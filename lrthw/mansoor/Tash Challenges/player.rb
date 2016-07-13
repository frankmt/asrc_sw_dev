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
    # puts "#{@name}, #{@latest_roll}"
  end

  def latest_roll
    @latest_roll
  end

end
# mesut_ozil = Player.new("Mesut Ozil")
# mansoor_ali = Player.new("Mansoor Ali")
#
# mesut_ozil.take_turn
# puts mesut_ozil.latest_roll
#
# mansoor.take_turn
# puts mansoor_ali.latest_roll
