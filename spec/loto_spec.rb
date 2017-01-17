require './loto.rb'

loto_du_samedi = Loto.new
# 2.times {loto_du_samedi.validate_grid Loto.get_flash}

# #.each { |grid| loto_du_samedi.check_grid grid }

# loto_du_lundi = Loto.new
# loto_du_lundi.validate_grid Loto.get_flash
# #loto_du_lundi.check_grid(grid)
# if loto_du_lundi.has_winner?
#   puts "Someone win"
# else
#   puts "nobody win"
# end

loto_du_samedi.prize