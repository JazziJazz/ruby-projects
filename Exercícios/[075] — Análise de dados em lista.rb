print("Você irá digitar um total de quatro números, iremos salva-lo em uma tabela e exibir uma análise.\n")
numbers_to_write = %w[Primeiro Segundo Terceiro Quarto]
list_of_numbers = []

(0 .. 3).each { |value| print("Digite o #{numbers_to_write[value].downcase} número: "); list_of_numbers.push(gets.chomp.to_i) }

print("O número nove aparece um total de #{list_of_numbers.count(9)} vez(es).\nO número três aparece primeiro na posição #{list_of_numbers.index(3)}.\nA lista com os números pares: ")

list_of_numbers.each { |value| unless value.odd?; print("#{value}, ") end }
