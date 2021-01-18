print("Encontraremos o valor da hipotenusa por você!\n\nQual é o valor do cateto oposto?: ")
opposite_side = gets.chomp.to_f

print("Muitissímo bem! Por último, digite o valor do cateto adjacente: ")
adjacent_side = gets.chomp.to_f

hypotenuse = sprintf("%.2f", Math.sqrt((opposite_side ** 2) + (adjacent_side ** 2)))
puts("\nEncontrei! O valor da hipotenusa é igual a: #{hypotenuse}.")
