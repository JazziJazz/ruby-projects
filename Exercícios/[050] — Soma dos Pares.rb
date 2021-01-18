print("Digite uma sequência de seis números, iremos somar os pares e descartar os ímpares.\n\n")

numbers = Array.new
positions = %w[Primeiro Segundo Terceiro Quarto Quinto Sexto]
sum_of_pairs = 0
number_of_pairs = 0

(0 .. 5).each do |index|
    print("Digite o #{positions[index].downcase} número: ")

    numbers.push(gets.chomp.to_i)
end

numbers.each do |value|
    unless value.odd?
        sum_of_pairs += value
        number_of_pairs += 1
    end
end

puts("A soma total do(s) número(s) pare(s) é de #{sum_of_pairs}.\nHouve um total de #{number_of_pairs} numero(s) pares.")


