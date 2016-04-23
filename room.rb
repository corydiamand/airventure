class Room
  def initialize(id)
    @id = id
    @enemies = []
    @directions = ['north','east','south','west']
    @connections = [[nil,'north'],[nil,'east'],[nil,'south'],[nil,'west']]
  end

  def add_enemy(enemy)
    @enemies.push(enemy)
  end

  def enemies
    @enemies
  end

  def generate_connections

    chance_of_connections = rand(0..100)
    if chance_of_connections >= 95
      number_of_connections = 3
    elsif (chance_of_connections < 95) && (chance_of_connections >= 73)
      number_of_connections = 2
    elsif (chance_of_connections < 73) && (chance_of_connections >= 33)
      number_of_connections = 1
    else
      number_of_connections = 0
    end

    connection_directions = @directions.sample(number_of_connections)

    [:number_of_connections => number_of_connections, :connection_directions => connection_directions]
  end

  def self.all
      ObjectSpace.each_object(self).to_a
  end

  def connections
    @connections
  end

end
