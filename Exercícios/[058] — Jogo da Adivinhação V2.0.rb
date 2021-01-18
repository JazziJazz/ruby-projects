puts("

     #{"-=-" * 20}
Vou pensar em um número entre um e dez, tente adivinhar!
#{"-=-" * 20}

     ")
print("Em que número eu pensei?!: ")

number = gets.chomp.to_i
random_number = rand(1..10)
number_of_try = 0

while number != random_number;
    puts("Você errou! Tente novamente.")
    number = gets.chomp.to_i
    number_of_try += 1

end

puts("Parabéns! Você ganhou! Eu realmente estava pensando no número #{number}! Foram necessárias um total de #{number_of_try} tentativas para você adivinhar o número.")
