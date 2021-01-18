print("Exibiremos vários dados sobre uma lista de números que você irá informar.\n")
array_of_numbers = Array.new
count_of_numbers = 0

while true;
    print("Por favor, digite um número para ser adicionado a tabela.\nNúmero [999-to-stop]: ")
    number_to_push = gets.chomp.to_i

    if not number_to_push == 999;
        count_of_numbers += 1
        array_of_numbers.append(number_to_push)
    else
        print("Houve um total de #{count_of_numbers} números digitados por você.\n\nA sua lista de números:\n#{array_of_numbers.sort.reverse}.\n\n")

        if array_of_numbers.include?(5);
            print("O número cinco está incluso nessa lista, ele aparece primeiro na posição #{array_of_numbers.index(5)}.\nAo todo o número cinco aparece #{array_of_numbers.count(5)} vez(es).")
        else
            print("O número cinco não está incluso nessa lista de números.")
        end

        break
    end

end
