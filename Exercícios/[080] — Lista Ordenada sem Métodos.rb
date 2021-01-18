list_of_numbers = Array.new
numbers_to_write = %w[primeiro segundo terceiro quarto quinto]

(0 .. 4).each do |value|
    print("Qual é o #{numbers_to_write[value]} valor?: ")
    number_to_push = gets.chomp.to_i

    if list_of_numbers[0].nil? or number_to_push > list_of_numbers[value - 1];
        list_of_numbers.push(number_to_push)
    else
        (0 .. list_of_numbers.length).each do |index_value|
            if number_to_push <= list_of_numbers[index_value];
                list_of_numbers.insert(index_value, number_to_push)
                break
            end
        end
    end
end


print("Tabela ordenada:\n\n#{list_of_numbers}")