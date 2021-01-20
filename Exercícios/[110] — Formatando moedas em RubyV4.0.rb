require_relative 'modules/math/moeda_and_dado'

print("Digite qualquer quantia monetária: R$")
money = gets.chomp.to_f
Moeda::resume(money, 10, 20)

