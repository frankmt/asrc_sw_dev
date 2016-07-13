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
      winner = @player1
    end
    if @player1.latest_roll <= @player2.latest_roll
      winner = @player2
    end
    puts "#{winner.name} won the game"
  end
  def draw
    puts "#{@player1.name} #{@player1.latest_roll}"
    puts "#{@player2.name} #{@player2.latest_roll}"
    if @player1.latest_roll == @player2.latest_roll
    end
    puts "The match is draw"
  end
end

mesut_ozil = Player.new("Mesut Ozil")
mansoor_ali = Player.new("Mansoor Ali")

game = Game.new(mesut_ozil, mansoor_ali)
game.play
game.winner
game.draw
