require_relative "./player.rb"
class Game
  attr_reader :player1, :player2, :number_of_turn

  def initialize(player1, player2, number_of_turn)
    @player1 = player1
    @player2 = player2
    @number_of_turn = number_of_turn
  end

  def play

      @number_of_turn.times do |i|
        @player1.take_turn
        @player2.take_turn
      end
  end

  def winner
   puts "#{@player1.name} #{@player1.total_roll}"
   puts "#{@player2.name} #{@player2.total_roll}"

    if @player1.total_roll > @player2.total_roll
      puts("#{@player1.name} Won The Game!")
    elsif @player1.total_roll < @player2.total_roll
      puts("#{@player2.name} Won The Game!")
    end

    if @player1.total_roll == @player2.total_roll
      puts "The match is draw"
    end
  end
end

mesut_ozil = Player.new("Mesut Ozil")
mansoor_ali = Player.new("Mansoor Ali")

game = Game.new(mesut_ozil, mansoor_ali, 10)
game.play
game.winner
