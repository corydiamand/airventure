class Player

  attr_accessor :current_room

  def initialize
    @health = 100
    @strength = 50
    @current_room = 1
  end

  def current_health
    health
  end

  def attack(enemy)
    enemy.lose_health(@strength)
    puts enemy.health
  end

  def current_room
    @current_room
  end

end
