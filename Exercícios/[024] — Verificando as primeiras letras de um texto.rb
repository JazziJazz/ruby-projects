print("Será que o nome da sua cidade começa com santo? Iremos verificar para você!\nEm que cidade você nasceu?: ")
city = gets.chomp.strip.downcase
puts(city.start_with?("santo"))
