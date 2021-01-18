print("Informe um número, iremos dizer tudo que é possível sobre ele: ")
number = gets.chomp.to_i

puts("O número informado é igual a: #{number}

Ele possui um total de #{number % 10} unidade(s).
O mesmo número possui um total de #{number % 100 / 10} dezena(s).
Além de possuir #{number % 1000 / 100} centena(s).
Esse número também possui um total de #{number % 1000000 / 1000} milhar(es).
Por último, mas não menos importante esse número possui #{number % 100000000000 / 1000000} milhão(oes).")
