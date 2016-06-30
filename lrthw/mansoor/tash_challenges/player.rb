class Player
  attr_reader :name

  def initialize(name)
  @name = name
  end

  def name
    puts "#{@name}"
  end
end
player = Player.new("Mesut Ozil")

player.name
