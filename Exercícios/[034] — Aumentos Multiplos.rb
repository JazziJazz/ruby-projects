print("Digite o valor do salário de um funcionário: R$ ")
salary = gets.chomp.to_f

if salary >= 2000;
    salary = salary + (10 * salary / 100.0)
else
    salary = salary + (15 * salary / 100.0)
end

puts("O valor do novo salário desse funcionário é igual a #{salary}.")
