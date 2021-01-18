puts("

#{"-=-" * 20}
Vou pensar em um número entre um e cinco, tente adivinhar!
#{"-=-" * 20}

")
print("Em que número eu pensei?!: ")

number = gets.chomp.to_i
random_number = rand(1..5)

if (number) == (random_number);
    puts("Parabéns! Você ganhou! Eu realmente estava pensando no número #{number}!")
else
    puts("Eu ganhei! Eu estava pensando no número #{random_number}!")
end