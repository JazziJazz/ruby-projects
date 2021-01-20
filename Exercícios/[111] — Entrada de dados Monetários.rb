require_relative 'modules/math/moeda_and_dado'

money = Dado::read_money("Digite um valor monetário para ser lido: R$")
Moeda::resume(money, 35, 20)


