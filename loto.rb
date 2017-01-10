# affichage du montant de la cagnote
# entre 100 et 500.000 Euros
# le vendredi 13, la cagnote est de 2 millions
is_vendredi_13 = true
if is_vendredi_13
  cagnote = 2_000_000
else
  cagnote = 100.000
end
puts "Le montant de la cagnote du jour est de #{cagnote}"
available_balls = (1..45).to_a
# shuffle balls and take 5
picked_balls = available_balls.shuffle.take 5

puts "Le tirage du jour est : #{picked_balls.sort}" 