array_odd, array_numbers, array_even = Array.new, Array.new, Array.new

print("Iremos inserir vários números em uma lista, ao final, retornaremos os valores impares e pares em listas separadas.\n")

while true;
    print("Digite um número [999-to-stop]: ")
    number_to_push = gets.chomp.to_i

    if number_to_push != 999;
        array_numbers.append(number_to_push)
    else
        array_numbers.each do |value|
            if value.odd?;
                array_odd.append(value)
            else
                array_even.append(value)
            end
        end

        print("A lista de números completa será exibida abaixo:\n#{array_numbers}\n\nA lista de números impares:\n#{array_odd}\n\nA lista de números pares:\n#{array_even}")

        break
    end
end
