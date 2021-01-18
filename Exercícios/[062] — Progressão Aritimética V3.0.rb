print("Bem-vindo a segunda versão do programa que calcula a progressão aritimética.\nQual é o primeiro termo dessa P.A?: ")
first_term = gets.chomp.to_i

print("Ótimo. Agora nos informe, por gentileza, a razão dessa P.A: ")
reason = gets.chomp.to_i

arithmetic_progression = first_term
times = 8

while true;
    while arithmetic_progression != ((first_term + reason) + reason * times + 1);
        print("#{arithmetic_progression} ➙ ")
        arithmetic_progression += reason
        sleep(1)
    end

    print("PAUSA!\nVocê deseja mostrar mais quantos termos?: ")
    times_push = gets.chomp.to_i

    if times_push == 0;
        break
    else
        times += times_push
    end
end

print("➙ FIM!")
