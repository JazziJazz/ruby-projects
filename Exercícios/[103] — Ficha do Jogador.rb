def informations_about_player(name = false, goals_of_player = false)
    unless name;
        print("Digite o nome do jogador: ")
        name = gets.chomp
        if name == "";
            name = '<desconhecido>'
        end
    end

    unless goals_of_player;
        print("Digite a quantidade de gols: ")
        goals_of_player = gets.chomp.to_i
    end

    print("O nome do jogador é #{name} e ele fez #{goals_of_player} gol(s) durante o campeonato.")
end

informations_about_player
