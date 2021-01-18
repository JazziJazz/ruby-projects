print("Qual é a velocidade que você estava quando passou pelo radar?: ")
speedy = gets.chomp.to_i

if speedy > 80;
    puts("Você foi multado! Você deverá pagar ao estado o valor de R$#{(speedy - 80) * 7}")
else
    puts("Está tranquilo, você não foi multado.")
end
