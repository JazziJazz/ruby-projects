print("Digite a distância em quilometros, nós iremos calcular para você o custo da viagem.\nDistância em quilometros: ")
distance = gets.chomp.to_f

if distance > 200;
    puts("Você vai pagar um total de R$#{sprintf("%.2f", (distance * 0.45))} por essa viagem.")
else
    puts("Você vai pagar um total de R$#{sprintf("%.2f", (distance * 0.50))} por essa viagem.")
end
