print("\033[1;32mDigite uma distância em METROS, iremos fazer cálculos e exibir em sua tela a mesma área convertida em outras medidas: ")
meters = gets.chomp.to_f

puts("\033[mA distância de #{meters} metro(s) equivale a: #{(meters / 1000.0).floor(4)} quilometro(s).
A distância de #{meters} metro(s) equivale a: #{(meters / 100.0).floor(4)} hectometro(s).
A distância de #{meters} metro(s) equivale a: #{(meters / 1609.0).floor(4)} milha(s).
A distância de #{meters} metro(s) equivale a: #{(meters * 100.0).floor(4)} centimetro(s).
A distância de #{meters} metro(s) equivale a: #{(meters * 1000.0).floor(4)} milímetros(s).")


