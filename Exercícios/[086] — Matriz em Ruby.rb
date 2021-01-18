array_matriz = [[], [], []]

(0 .. 2).each do |index|
    (0..2).each do |value|
        print("Digite o valor para posição [#{index}], [#{value}]: ")
        number_to_add = gets.chomp.to_i

        array_matriz[index].append(number_to_add)
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

