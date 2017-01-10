available_balls = (1..45).to_a
# first random picking
picked_balls=[]
(0..4).each { |i| picked_balls.push available_balls.delete_at rand(45-i) }

puts "Le tirage du jour est : #{picked_balls.sort}" 