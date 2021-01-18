array_matriz = [[], [], [], {count_even: 0, count_second_line: 0, count_third_column: 0,
                             high_value_second_line: nil}]

(0 .. 2).each do |key|
    (0 .. 2).each do |value|
        print("Digite o valor para posição [#{key}], [#{value}]: ")
        number_to_add = gets.chomp.to_i
        array_matriz[key].append(number_to_add)

        #  Caso o número informado não seja impar, então ele é somado a um hash.
        unless number_to_add.odd?
            array_matriz[3][:count_even] += number_to_add
        end

        #  Caso o valor esteja na segunda linha, então ele é somado a um hash.
        if key == 1;
            array_matriz[3][:count_second_line] += number_to_add

            if array_matriz[3][:high_value_second_line].nil? or (number_to_add > array_matriz[3][:high_value_second_line]);
                array_matriz[3][:high_value_second_line] = number_to_add
            end
        end

        #  Caso o valor esteja na terceira coluna, então ele é somado a um hash.
        if value == 2;
            array_matriz[3][:count_third_column] += number_to_add
        end
    end
end

print("\n\nExibiremos abaixo a matriz para você:\n\n")

(0 .. 2).each do |key|
    (0 .. 2).each do |value|
        if value != 2;
            print("[#{array_matriz[key][value].to_s.center(5)}]")
        else
            print("[#{array_matriz[key][value].to_s.center(5)}]\n")
        end

    end
end

print("\nA soma total dos valores pares dessa matriz é igual a:\n#{array_matriz[3][:count_even]}\nA soma total dos valores da segunda linha é igual a:\n#{array_matriz[3][:count_second_line]}\nOs valores da terceira coluna somados tem como resultado:\n#{array_matriz[3][:count_third_column]}\nO maior valor da segunda linha é igual a:\n#{array_matriz[3][:high_value_second_line]}")
