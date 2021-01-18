print("Digite dois números, iremos exibir algumas informações sobre eles.\nPrimeiro número: ")
first_number = gets.chomp.to_f

print("Segundo número: ")
second_number = gets.chomp.to_f

if first_number > second_number;
    puts("O primeiro número é maior que o segundo.")
elsif second_number > first_number
    puts("O segundo número é maior que o primeiro.")
else
    puts("Os dois números são iguais.")
end
