ord = ['Primeiro', 'Segundo', 'Terceiro', 'Quarto']
alunos = []

4.times do |value| print("Digite o nome do #{ord[value].downcase} aluno(a): ")
    alunos.push(gets.chomp)
end

puts("A ordem de apresentação será:\n#{alunos.sample(alunos.count)}")
