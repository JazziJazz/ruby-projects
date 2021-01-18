print("Você quer jogar jokenpo comigo? Incrível!\nVamos jogar juntos então, selecione sua opção.\n\n1. Pedra.\n2. Papel.\n3. Tesoura.\n\nEu quero jogar: ")
option = gets.chomp.to_i
computer_option = rand(1 .. 3)

case option
    when 1
        if computer_option == 3;
            puts("Você jogou pedra, mas eu joguei tesoura e perdi. Você é muito bom!")
        elsif computer_option == 2;
            puts("Eu ganhei! Você pode ter jogado pedra, mas o papel é mais forte!")
        else
            puts("Nós empatamos, ambos jogamos pedra. Não é incrível quando ninguém precisa perder?")
        end
    when 2
        if computer_option == 3;
            puts("Para aqueles que usam papel para batalhar, engenhosidade é necessária. A tesoura ganha do papel, eu venci!")
        elsif computer_option == 2;
            puts("Nós empatamos, ambos jogamos papel. Não é incrível quando ninguém precisa perder?")
        else
            puts("A pedra vence a tesoura, mas perde para o papel. É sempre um cíclo, esse jogo nos mostra mais sobre a sociedade do que levamos em consideração.\n\nEu perdi.")
        end
    when 3
        if computer_option == 3;
            puts("Acabamos empatados com tesouras, meu amigo.")
        elsif computer_option == 2;
            puts("Essa não, eu perdi!")
        else
            puts("Eu venci")
        end
    else
        puts("Algo de errado não está certo, reinicie o programa e verifique suas opções.")
end

for i in 1 .. 10 do
    sleep(1)
    print("Olá.")
end