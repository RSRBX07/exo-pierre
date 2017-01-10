available_balls = (1..45).to_a
# shuffle balls and take 5
picked_balls = available_balls.shuffle.take 5

puts "Le tirage du jour est : #{picked_balls.sort}" 