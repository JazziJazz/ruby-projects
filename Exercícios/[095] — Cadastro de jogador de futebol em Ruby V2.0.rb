table_of_players = []

while true;
    print("Qual é o nome do jogador de futebol?: ")
    name_of_player = gets.chomp

    print("Quantas partidas o jogador participou?: ")
    number_of_games = gets.chomp.to_i

    table_of_goals = []
    (1 .. number_of_games).each do |number_of_game|
        print("Quantos gols #{name_of_player} marcou no jogo número #{number_of_game}?: ")
        table_of_goals.append(gets.chomp.to_i)
    end

    total_of_goals = table_of_goals.inject {|sum, el| sum + el}.to_i
    table_of_players.push({name: name_of_player, number_of_games: number_of_games, table_of_goals: table_of_goals, total_of_goals: total_of_goals})

    print("Você deseja cadastrar outro jogador? [S/N]: ")
    question_answer = gets.chomp.strip.upcase

    while question_answer != "S" and question_answer != "N";
        print("Erro! Verifique o que você digitou e tente novamente.\nVocê deseja cadastrar outro jogador? [S/N]: ")
        question_answer = gets.chomp.strip.upcase
    end

    if question_answer == "N";
        print("#{'--' * 40}\n#{"Cód".ljust(15)}#{"Nome".ljust(15)}#{"Gols".rjust(15)}#{"Total de Gols".rjust(30)}\n#{'--' * 40}\n")

        (0 .. table_of_players.length - 1).each do |index_number|
          print("#{index_number.to_s.ljust(15)}#{table_of_players[index_number][:name].ljust(15)}#{table_of_players[index_number][:table_of_goals].to_s.rjust(15)}#{table_of_players[index_number][:total_of_goals].to_s.rjust(30)}\n")
        end
    end

    while question_answer == "N";
        print("\n\nVocê deseja exibir informações de qual jogador? [999-to-stop]: ")
        get_player_info = gets.chomp.to_i

        while get_player_info > table_of_players.length and get_player_info != 999;
            print("\nErro! Você digitou um número inválido.\nVocê deseja exibir informações de qual jogador? [999-to-stop]: ")
            get_player_info = gets.chomp.to_i
        end

        if get_player_info == 999;
            break
        end

        (0 .. table_of_players[get_player_info][:table_of_goals].length - 1).each do |index_value|
            print("No jogo número #{index_value + 1} o jogador fez: #{table_of_players[get_player_info][:table_of_goals][index_value]} gol(s).\n")
            sleep(1)
        end
    end

    if question_answer == "N";
        print("Programa encerrado.")
        break
    end
end