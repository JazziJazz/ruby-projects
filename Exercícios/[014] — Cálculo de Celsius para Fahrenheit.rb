print("Digite a temperatura em graus célsius: ")
celsius = gets.chomp.to_f

puts("A temperatura de #{sprintf("%.1f", celsius)}Cº equivale à temperatura de: #{sprintf("%.1f", ((celsius * 9/5) + 32))}Fº.")
