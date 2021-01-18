print("Você deseja exibir quantos jogos?: ")
number_of_games = gets.chomp.to_i
random_numbers = Array.new

(0 .. number_of_games - 1).each {
    while random_numbers.length != 6;
        random_number_to_add = rand(60)

        unless random_numbers.include?(random_numbers);
            random_numbers.push(random_number_to_add)
        end
    end
    print("#{random_numbers.sort}\n")
    random_numbers.clear
}
