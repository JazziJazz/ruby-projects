print("Você ira informar duas notas de um aluno, iremos calcular a média e dizer se ele está aprovado ou reprovado.\nInforme a primeira nota do aluno: ")
first_note = gets.chomp.to_f

print("Qual é a segunda nota do aluno?: ")
second_note = gets.chomp.to_f

average = (first_note + second_note) / 2

if average < 5.0;
    puts("O aluno está reprovado, se esforce mais para melhorar suas notas no próximo ano.")
elsif average < 6.9
    puts("Você está em recuperação, ainda há uma chance de você se formar. Será que você vai aproveitar essa chance? Ou vai viver em arrependimento se perguntando o que teria acontecido se as coisas fossem diferente?")
else
    puts("Parabéns! Você cumpriu um bom papel como aluno e está aprovado, pode relaxar e sonhar com o futuro.")
end
