print("Você ira digitar vários valores, no final exibiremos qual foi o menor número, o maior e\na média entre todos valores digitados.\n\nDigite um número [999-to-stop]: ")
number = gets.chomp.to_i

min_number = number
max_number = number

count_average = number
count_quantity = 1

until number == 999;
    print("Digite um número [999-to-stop]: ")
    number = gets.chomp.to_i

    unless number == 999;
        if number < min_number;
            min_number = number
        elsif number > max_number;
            max_number = number
        end

        count_average += number
        count_quantity += 1
    end
end

puts("\nA média de todos os #{count_quantity} número(s) é igual a #{count_average / count_quantity}.\nO menor número é igual a #{min_number} e o maior é igual a #{max_number}.")
