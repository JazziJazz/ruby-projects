print("Bem-vindo ao analisador de texto.\nDigite o seu nome ao lado: ")
name = gets.chomp

puts("O seu nome em letras maiúsculas é igual a: #{name.upcase}.
O seu nome em letras minúsculas é igual a: #{name.downcase}.
Ao todo o seu nome possuí #{name.delete(" ").length} letras.
O seu primeiro nome é #{name.split[0]} e ele possuí um total de #{name.split[0].length}.")
