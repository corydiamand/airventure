class Dungeon

  def initialize
    @rooms = []
  end

  def generate_rooms
    10.times do |i|
      puts 'Room '+i.to_s
      room = Room.new(i)
      puts room.generate_connections
      @rooms.push()
    end
  end

end
