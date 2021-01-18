print("Digite um número! Exibiremos o dobro, o triplo e a sua RaizQ: ")
number = gets.chomp.to_f

puts("O dobro do número é igual a: #{number * 2}\nO triplo do número é igual a: #{(number * 3).floor(2)}\nPor último, mas não menos importante a raiz quadrada do número digitado é igual a: #{Math.sqrt(number).floor(2)}")
