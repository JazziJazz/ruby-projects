print("Digite o salário atual do funcionário, em seguida iremos exibi-lo com um aumento de quinze porcento: R$")
salary = gets.chomp.to_f
salary_adjusted = salary + (15 * salary / 100)

puts("O salário anterior era de R$#{sprintf("%.2f", salary)}.
O novo salário do funcionário com o aumento de 15% é equivalente a R$#{sprintf("%.2f", salary_adjusted)}.")
