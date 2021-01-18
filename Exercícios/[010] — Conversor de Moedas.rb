print("Digite um valor monetário em real, iremos converte-lo para dollar: R$")
money = gets.chomp.to_f

puts("O valor convertido de #{sprintf"%.2f", money} é igual a: $#{sprintf("%.2f", money / 5.48)}")
