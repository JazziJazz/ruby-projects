require_relative 'modules/math/moeda_v2'

print("Digite um valor monetário: R$")
money = gets.chomp.to_f

print("O valor monetário de R$#{money} com um acréscimo de dez porcento é igual a #{aumentar(money, 10, formated=true)}.

O valor monetário de R$#{money} com um decréscimo de dez porcento é igual a #{diminuir(money, 10, formated=true)}.

O dobro do valor monetário de R$#{money} é igual a #{dobro(money, formated=true)}.

A metade do valor monetário de R$#{money} é igual a #{metade(money, formated=true)}.")
