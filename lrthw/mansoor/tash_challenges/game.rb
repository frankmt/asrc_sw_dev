require_relative "./player.rb"
class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def play
    @player1.take_turn
    @player2.take_turn
  end
  def winner
   puts "#{@player1.name} #{@player1.latest_roll}"
   puts "#{@player2.name} #{@player2.latest_roll}"

    if @player1.latest_roll >= @player2.latest_roll
      puts "#{@player1} won the game!"
    else if @player1.latest_roll <= @player2.latest_roll
      puts "#{@player2} won the game!"
    end
    
    if ## draw condition
      ## draw behavior
    end
  end
end

mesut_ozil = Player.new("Mesut Ozil")
mansoor_ali = Player.new("Mansoor Ali")

game = Game.new(mesut_ozil, mansoor_ali)
game.play
game.winner
