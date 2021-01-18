numbers_to_write = %w[primeiro segundo terceiro quarto quinto sexto sétimo]
array_odd_even = [[], []]

print("Vamos digitar! Você vai digitar até sete valores, iremos armazena-los em tabelas e logo após exibiremos todos os valores pares e impares.\n\n")

(0 .. 6).each do |number|
    print("Digite o #{numbers_to_write[number]} número: ")
    number_to_analyse = gets.chomp.to_i

    if number_to_analyse.odd?
        array_odd_even[0].append(number_to_analyse)
    else
        array_odd_even[1].append(number_to_analyse)
    end
end

print("Os valores impares digitados são iguais a:\n#{array_odd_even[0]}\n\nOs valores pares digitados são iguais a:\n#{array_odd_even[1]}")
