
print("Bem-vindo! Digite o nome de quatro alunos para apagar o quadro negro, iremos sortear apenas um!\n")
students = [gets.chomp, gets.chomp, gets.chomp, gets.chomp]

puts("O aluno(a) sorteado foi o(a): #{students[rand(0..3)]}.")
