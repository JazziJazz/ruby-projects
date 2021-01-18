print("Digite vários números, no final exibiremos quantos números você digitou e qual é a\nsoma entre eles.\nDigite um número: ")
number = gets.chomp.to_i
total_of_numbers, count_of_numbers = number, 1

until number == 999;
    print("Digite um número: ")
    number = gets.chomp.to_i

    unless number == 999;
        total_of_numbers += number
        count_of_numbers += 1
    end
end

puts("Programa encerrado. Você digitou um total de #{count_of_numbers} e a soma entre todos eles é igual a #{total_of_numbers}.")
