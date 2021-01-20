def read_integer(message_to_show)
    while true
        begin
            print(message_to_show)
            number = gets.chomp

            if number.to_i != 0 or number == "0";
                number = number.to_i
            end

            number + 0
        rescue (TypeError)
            print("Erro! Você digitou uma entrada de dados inválida, tente novamente.\nDigite um valor numérico: ")
            next
        else
            return number
        end
    end
end

def read_float(message_to_show)
    while true
        begin
            print(message_to_show)
            number = gets.chomp

            if number.to_f != 0.0 or number == "0.0";
                number = number.to_f
            end

            number + 0
        rescue (TypeError)
            print("Erro! Você digitou uma entrada de dados inválida, tente novamente.\nDigite um valor numérico: ")
            next
        else
            return number
        end
    end
end

number = read_integer("Digite um valor numérico: ")
p number

number_float = read_float("Agora com float!")
p number_float