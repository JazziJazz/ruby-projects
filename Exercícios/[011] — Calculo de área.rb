print("Iremos calcular à área de uma parede e quantos litros de tinta será necessário para pinta-la!\nQual é a largura da parede em metro(s)?: ")
wall_width = gets.chomp.to_f

print("Muito bem! Agora informe à altura da parede: ")
wall_height = gets.chomp.to_f

area_wall = (wall_width * wall_height).floor(4)
wall_paint = area_wall / 2

puts("\nÀ área da parede é igual a: #{area_wall}m².
Para pinta-la você precisará de #{wall_paint} litros de tinta.")
