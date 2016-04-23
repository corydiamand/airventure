require './game.rb'
require './dungeon.rb'
require './room.rb'
require './player.rb'
require './enemy.rb'


@started = true

puts "Creating Game"
@game = Game.new

puts "Generating Dungeon"
@dungeon = Dungeon.new

puts "Adding rooms to dungeon"
@dungeon.generate_rooms

puts "Creating Room"
@room = Room.new(1)

puts "Creating Enemy"
@ogre = Enemy.new

puts "Creating Player"
@player = Player.new

puts "Adding enemy to room"
@room.add_enemy(@ogre)
puts @room.enemies.first
puts "Listening for input"


while @started == true
  puts @room.enemies.first.health
  command = gets.downcase.chomp
  puts command
  if command == 'move'
    puts "Which direction? North East South West"
    direction = gets.downcase.chomp

    #check if room has connection in that direction
    #if connection, move player
    puts 'moved '+direction
    #if no connection
  end
  if command == 'attack'
    @player.attack(@room.enemies.first)
  end
  if command == 'look'
    @player.current_room.inspect
  end
  if command == 'stop'
    break
  end
end
