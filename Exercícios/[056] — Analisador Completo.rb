print("Você ira digitar o nome, idade e sexo de quatro pessoas diferentes, no final iremos exibir para você:\nA média de idade do grupo, qual é o nome do homem mais velho e quantas mulheres tem menos de vinte anos.\n\n")

peoples = Array.new
numbers_to_count = %w[Primeira Segunda Terceira Quarta]
average_age = 0
name_of_older_man = nil
young_womans = 0

(0 .. 3).each do |number|
    print("Qual é o nome da #{numbers_to_count[number].downcase} pessoa?: ")
    name = gets.chomp

    print("Qual é a idade da #{numbers_to_count[number].downcase} pessoa?: ")
    age = gets.chomp.to_i

    print("Qual é o sexo da #{numbers_to_count[number].downcase} pessoa? [M/F]: ")
    gender = gets.chomp.upcase
    puts('')

    peoples.push([name, age, gender])
end

(0 .. 3).each do |index|
    #  Verifica se o sexo é masculino, se for e caso o nome do homem mais velho seja nulo, então o nome do homem mais velho passa a ser o nome atribuido no index da tabela.
    if peoples[index][2] == 'M' and name_of_older_man.nil?;
        name_of_older_man = Array.new

        name_of_older_man[0], name_of_older_man[1] = peoples[index][0], peoples[index][1]
    end

    #  Verifica se o sexo é masculino, se for masculino, verifica se a idade é superior a da pessoa anterior, se for, altera.
    if peoples[index][2] == 'M' and not name_of_older_man.nil? ;
        if peoples[index][1] > name_of_older_man[1];
            name_of_older_man[0], name_of_older_man[1] = peoples[index][0], peoples[index][1]
        end
    end

    if peoples[index][2] == 'F' and peoples[index][1] < 20;
        young_womans += 1
    end

    #  Essa parte é responsável pela soma das idades das pessoas.
    average_age += peoples[index][1]
end

puts("\nO homem mais velho é o #{name_of_older_man[0]}, com #{name_of_older_man[1]} anos.\nHá #{young_womans} mulheres abaixo de vinte anos de idade.\nA média de idade desse grupo é de #{average_age / 4}.")
