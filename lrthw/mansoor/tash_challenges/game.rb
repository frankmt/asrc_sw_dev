require_relative "./player.rb"
class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def player
    puts "The highest score will win"
  end
  def play
    @player1 = take_turn
    @player2 = take_turn
  end
end
game = Game.new("Mesut Ozil", "Mansoor")
game.player
