require_relative 'modules/math/moeda.rb'

print("Digite a quantidade de dinheiro que você desejar: R$")
money = gets.chomp.to_f

print("O dobro de R$#{money} é equivalente a R$#{sprintf("%.2f", dobro(money))}.\nA metade de R$#{money} é equivalente a R$#{sprintf("%.2f", metade(money))}.\nAumentando dez porcento de R$#{money} é equivalente a R$#{sprintf("%.2f", aumentar(money, 10))}.\nDiminuindo dez porcento de R$#{money} é equivalente a R$#{sprintf("%.2f", diminuir(money, 10))}.")
