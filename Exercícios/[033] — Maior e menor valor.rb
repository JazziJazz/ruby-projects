print("Digite três números, iremos verificar o menor e o maior valor: ")
numbers = [gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i]

puts("O maior número é igual a: #{numbers.max}
O menor número é igual a: #{numbers.min}")
