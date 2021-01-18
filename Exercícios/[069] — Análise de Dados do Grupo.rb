print("Bem-vindo ao cadastramento de dados de grupo e análise.\n")
number_of_older_people, number_of_mans, number_of_young_womans = 0, 0, 0

while true;
    print("Qual é a idade dessa pessoa?: ")
    age = gets.chomp.to_i

    print("Qual é o sexo dessa pessoa? [M/F]: ")
    gender = gets.chomp.strip.upcase

    if age >= 18;
        number_of_older_people += 1
    end

    if gender == 'F' and age < 20;
        number_of_young_womans += 1
    end

    if gender == 'M';
        number_of_mans += 1
    end

    print("\nVocê deseja continuar? [S/N]: ")
    choice = gets.chomp.strip.upcase

    if choice == 'N';
        print("Houve um total de #{number_of_older_people} maiores de idade cadastradas. \nO número de homens cadastrado é igual a #{number_of_mans}.\nUm total de #{number_of_young_womans} mulheres tem menos de vinte anos.")
        break
    end
end
