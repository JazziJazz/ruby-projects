print("Bem-vindo a segunda versão do programa que calcula a progressão aritimética.\nQual é o primeiro termo dessa P.A?: ")
first_term = gets.chomp.to_i

print("Ótimo. Agora nos informe, por gentileza, a razão dessa P.A: ")
reason = gets.chomp.to_i

arithmetic_progression = first_term

until arithmetic_progression == ((first_term + reason) + reason * 8);
    print("#{arithmetic_progression} ➙ ")
    arithmetic_progression += reason
    sleep(1)
end

print("#{arithmetic_progression} ➙ FIM!")
