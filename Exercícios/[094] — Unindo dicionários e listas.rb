list_of_peoples = Array.new
average_of_age = 0

while true;
    print("Qual é o nome dessa pessoa?: ")
    name_of_people = gets.chomp

    print("Qual é o sexo dessa pessoa? [M/F]: ")
    gender_of_people = gets.chomp.strip.upcase

    while gender_of_people != "M" and gender_of_people != "F";
        print("\nErro! Verifique o que você digitou e tente novamente.\nQual é o sexo dessa pessoa? [M/F]: ")
        gender_of_people = gets.chomp.strip.upcase
    end

    print("Qual é a idade dessa pessoa?: ")
    age_of_people = gets.chomp.to_i

    list_of_peoples.append({name: name_of_people, gender: gender_of_people, age: age_of_people})

    print("Você deseja cadastrar mais uma pessoa? [S/N]: ")
    question_answer = gets.chomp.strip.upcase

    while question_answer != "S" and question_answer != "N";
        print("Erro! Verifique o que você digitou, tente novamente.\nVocê deseja cadastrar mais uma pessoa? [S/N]: ")
        question_answer = gets.chomp.strip.upcase
    end

    if question_answer != "S";
        average = 0

        list_of_peoples.each do |element|
            average += element[:age]
        end

        average_of_age = average / list_of_peoples.size
        break
    end
end

print("\nHouve um total de #{list_of_peoples.size} pessoa(s) cadastradas.\nA média de idade do grupo é de #{average_of_age}.\n\nAs mulheres cadastradas são:\n")

list_of_peoples.select do |value|
    if value[:gender] != 'M';
        print("#{value[:name]}, ")
    end
end

print(".\n\nAs pessoas acima da média de idade são:\n")

list_of_peoples.select do |value|
    if value[:age] >= average_of_age;
        print("#{value[:name]} com a idade de #{value[:age]} anos.\n")
    end
end
