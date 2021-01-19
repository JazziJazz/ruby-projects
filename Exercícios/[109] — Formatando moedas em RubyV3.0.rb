require_relative 'modules/math/moeda_v2'

print("Digite qualquer valor monetário: R$")
money = gets.chomp.to_f

resume(money, 25, 10)
