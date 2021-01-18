array_heavy_peoples = Array.new
array_light_peoples = Array.new
number_of_peoples = 0

print("Vamos cadastrar algumas pessoas?\n\nEsse programa lê o nome e o peso de diversas pessoas, exibindo ao encerramento uma lista das pessoas\nmais leves e mais pesadas.\n\n")

while true;
    print("Digite o nome da pessoa: ")
    name_of_people = gets.chomp

    print("Digite o peso dessa pessoa: ")
    weight_of_people = gets.chomp.to_i

    if weight_of_people >= 100;
        array_heavy_peoples.push({name: name_of_people, weight: weight_of_people})
    elsif weight_of_people <= 70;
        array_light_peoples.push({name: name_of_people, weight: weight_of_people})
    end

    number_of_peoples += 1

    print("Você deseja cadastrar mais pessoas? [S/N]: ")
    question_answer = gets.chomp.upcase

    while question_answer != 'S' and question_answer != 'N';
        print("Desculpe, resposta inválida.\nVocê deseja cadastrar mais pessoas? [S/N]: ")
        question_answer = gets.chomp.upcase
    end

    if question_answer.upcase == 'N';
        print("Você cadastrou um total de #{number_of_peoples} pessoa(s).\n\nA lista com as pessoas mais pesadas está abaixo:\n")

        array_heavy_peoples.each do |hash|
            print("A pessoa número #{array_heavy_peoples.index(hash) + 1} se chama #{hash[:name]} e possui o peso de #{hash[:weight]} quilos.\n")
        end

        print("\n\nPor fim, vamos te exibir a lista das pessoas mais leves:\n")

        array_light_peoples.each do |hash|
            print("A pessoa número #{array_light_peoples.index(hash) + 1} se chama #{hash[:name]} e possui o peso de #{hash[:weight]} quilos.\n")
        end
        break
    end
end

print("\n\nPrograma encerrado.")

