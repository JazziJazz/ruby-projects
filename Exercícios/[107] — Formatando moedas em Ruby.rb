require_relative 'modules/math/moeda.rb'

print("Digite a quantidade de dinheiro que você desejar: R$")
money = gets.chomp.to_f

print("O dobro de #{moeda(money)} é equivalente a #{moeda(dobro(money))}.\nA metade de #{moeda(money)} é equivalente a #{moeda(metade(money))}.\nAumentando dez porcento de #{moeda(money)} é equivalente a #{moeda(aumentar(money, 10))}.\nDiminuindo dez porcento de #{moeda(money)} é equivalente a #{moeda(diminuir(money, 10))}.")

