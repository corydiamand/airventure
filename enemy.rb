class Enemy

  def initialize
    @health = 100
    @alive = true
  end

  def health
    @health
  end

  def lose_health(damage)
    if health > 0
      @health = @health - damage
    end

    if @health <= 0
      alive = false
      puts 'enemy has been vanquished!'
    end
  end

end
