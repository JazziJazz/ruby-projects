print("Digite um número, será que ele é par ou ímpar? Não se preocupe! Nós verificaremos por você.\nNúmero: ")
number = gets.chomp.to_i

if number.odd?;
    puts("O número é ímpar!")
else
    puts("O número é par!")
end
