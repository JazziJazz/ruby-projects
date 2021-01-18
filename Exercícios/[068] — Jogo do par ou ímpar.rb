print("Bem-vindo ao jogo do par ou ímpar!")
number_of_victory = 0

while true;
    print("\nDigite um número: ")
    number_to_play = gets.chomp.to_i
    number_to_play_machine = rand(0 .. 10)

    print("Você quer par ou ímpar? [P/I]: ")
    choice_to_play = gets.chomp.strip.upcase

    if choice_to_play == 'P' and not (number_to_play + number_to_play_machine).odd?;
        print("Você venceu! Sua escolha foi #{number_to_play} e a minha #{number_to_play_machine}. O número #{number_to_play + number_to_play_machine} é PAR.")
        number_of_victory += 1
    elsif choice_to_play == 'I' and (number_to_play + number_to_play_machine).odd?;
        print("Você venceu! Sua escolha foi #{number_to_play} e a minha #{number_to_play_machine}. O número #{number_to_play + number_to_play_machine} é IMPAR.")
        number_of_victory += 1
    elsif choice_to_play == 'P' and (number_to_play + number_to_play_machine).odd?;
        print("Você perdeu! Eu venci! Sua escolha foi #{number_to_play} e a minha #{number_to_play_machine}. O número #{number_to_play + number_to_play_machine} é IMPAR.\nVocê conseguiu vencer um total de #{number_of_victory} vez(es).")
        break
    elsif choice_to_play == 'I' and not (number_to_play + number_to_play_machine).odd?;
        print("Você perdeu! Eu venci! Sua escolha foi #{number_to_play} e a minha #{number_to_play_machine}. O número #{number_to_play + number_to_play_machine} é PAR.\nVocê conseguiu vencer um total de #{number_of_victory} vez(es).")
        break
    end
end








