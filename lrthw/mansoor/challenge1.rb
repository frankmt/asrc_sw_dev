class Player
  attr_accessor :name; :hp; :damage
  def initialize(name, hp, damage)
    @name = name
    @hp = hp
    @damage = damage
  end

  def attack
    puts "#{self.name} attacks #{badguy.name}!"
    badguy.hp -= @damage
    puts badguy.hp
  end
end

class Enemy
  attr_accessor :name; :hp; :damage
  def initialize(name, hp, damage)
    @name = name
    @hp = hp
    @damage = damage
  end

  def attack
    puts "#{self.name} attacks #{goodguy.name}!"
    player.hp -= @damage
    puts player.hp
  end
end  

goodguy = Player.new("Nicehero", 15, 5)
badguy = Enemy.new("Eviljerk", 15, 5)

me.attack