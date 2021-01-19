current_year = Time.new.year
hash_of_worker = {name_of_worker: nil, year_of_birth: nil, number_of_worker: nil,
                  age_of_worker: nil, year_of_hiring: nil, salary: nil,
                  time_until_retired: nil}

print("Bem-vindo ao cadastro único de trabalhadores em Ruby!\nDigite o nome do trabalhador: ")
hash_of_worker[:name_of_worker] = gets.chomp

print("Qual é o ano de nascimento do trabalhador?: ")
hash_of_worker[:year_of_birth] = gets.chomp.to_i

print("Qual é o número da carteira do trabalhador? [0-to-null]: ")
hash_of_worker[:number_of_worker] = gets.chomp.to_i

if hash_of_worker[:number_of_worker] != 0;
    print("Qual o ano de contratação do trabalhador?: ")
    hash_of_worker[:year_of_hiring] = gets.chomp.to_i

    print("Qual é o salário desse trabalhador?: ")
    hash_of_worker[:salary] = gets.chomp.to_f
end

hash_of_worker[:age_of_worker] = current_year - hash_of_worker[:year_of_birth]
hash_of_worker[:time_until_retired] = (current_year - hash_of_worker[:year_of_hiring]) - 35

print("\nO trabalhador #{hash_of_worker[:name_of_worker]} tem idade de #{hash_of_worker[:age_of_worker]} anos.\nEle foi contratado em #{hash_of_worker[:year_of_hiring]}. ")

if not hash_of_worker[:time_until_retired].negative?;
    print("Ele já poderia ter se aposentado a #{hash_of_worker[:time_until_retired].abs} ano(s).")
else
    print("Sua aposentadoria será daqui a #{hash_of_worker[:time_until_retired].abs} ano(s).")
end
