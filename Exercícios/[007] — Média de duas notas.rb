print("Digite a primeira nota do aluno: ")
first_note = gets.chomp.to_f

print("Digite a segunda nota do aluno: ")
second_note = gets.chomp.to_f

average = (first_note + second_note) / 2

puts("A primeira nota do aluno é de: #{first_note}\nA segunda nota do aluno é de: #{second_note}\n A média entre as duas notas é igual a: #{average.floor(2).round(1)}")
