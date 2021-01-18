print("Digite valor de um produto, iremos efetuar um cálculo e te dar uma porcentagem de desconto: ")

money = gets.chomp.to_f
discount = money - (5 * money / 100.0)

puts("O valor do produto que você escolheu é de R$#{money}, iremos te dar um super-desconto!
O valor do seu produto caiu em 5%! Agora você pagará apenas R$#{discount}.")
