print("Programa que lê o nome do jogador e informa o aproveitamento deste.\nQual é o nome do jogador?: ")
name_of_player = gets.chomp

print("Quantas partidas o jogador participou?: ")
number_of_games = gets.chomp.to_i

table_of_goals = []
(1 .. number_of_games).each do |value|
    print("Quantos gols você marcou na #{value} partida: ")
    table_of_goals.push(gets.chomp.to_i)
end

soma_total_dos_gols = 0
table_of_goals.each { |element| soma_total_dos_gols += element }

hash_of_player = {name_of_player: name_of_player, number_of_games: number_of_games, number_of_goals: table_of_goals, total_number_of_goals: soma_total_dos_gols}

print("\nO jogador #{hash_of_player[:name_of_player]} marcou em média um total de #{hash_of_player[:number_of_goals].inject {|sum, value| sum + value }.to_f / hash_of_player[:number_of_goals].size} por partida, ele jogou #{hash_of_player[:number_of_games]} partida(s).\n\nMarcou um total de #{hash_of_player[:total_number_of_goals]} gol(s).")
