print("Programa que salva o nome e a média de um aluno e exibe a sua situação.\nDigite o nome do aluno: ")
name_of_student = gets.chomp

print("Qual é a média desse aluno?: ")
average_of_student = gets.chomp.to_f

hash_of_student = {name_of_student: name_of_student, average_of_student: average_of_student}

print("O nome do aluno é #{hash_of_student[:name_of_student]}, a média do aluno é #{hash_of_student[:average_of_student]}.\n")

if hash_of_student[:average_of_student] >= 5;
    print("Sua situação é: Aprovado.")
else
    print("Sua situação é: Reprovado.")
end
