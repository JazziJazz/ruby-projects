hash_of_players = [{ name_of_player: "José",  score_of_player: rand(1..6) },
                   { name_of_player: "Pedro", score_of_player: rand(1..6) },
                   { name_of_player: "Ana",   score_of_player: rand(1..6) },
                   { name_of_player: "Maria", score_of_player: rand(1..6) }]

(0 .. hash_of_players.length - 1).each do |key|
    if key == 0;
        print("Valores sorteados!\n")
        print("O jogador #{hash_of_players[key][:name_of_player]} tirou o número #{hash_of_players[key][:score_of_player]} no dado.\n")
    else
        print("O jogador #{hash_of_players[key][:name_of_player]} tirou o número #{hash_of_players[key][:score_of_player]} no dado.\n")
    end

    sleep(1)
end

hash_of_players = hash_of_players.sort_by! {|element| element[:score_of_player]}.reverse

(0 .. hash_of_players.length - 1).each do |key|
    if key == 0;
        print("\nRanking dos jogadores!\nEm #{key + 1} lugar: #{hash_of_players[key][:name_of_player]} com o número #{hash_of_players[key][:score_of_player]}.\n")
    else
        print("Em #{key + 1} lugar: #{hash_of_players[key][:name_of_player]} com o número #{hash_of_players[key][:score_of_player]}.\n")
    end

    sleep(1)
end
