list_of_numbers = Array.new
numbers_to_write = %w[primeiro segundo terceiro quarto quinto]
print("Bem-vindo. Você ira digitar cinco números, no final exibiremos na tela o maior e o menor valor com seus respectivos indices na tabela.\n")

(0 .. 4).each do |value|
    print("Digite o #{numbers_to_write[value]} número: ")
    list_of_numbers.push(gets.chomp.to_i)
end

print("\n\nO maior número digitado é o #{list_of_numbers.max}, ele está na posição #{list_of_numbers.index(list_of_numbers.max)}.\nO menor número digitado é o #{list_of_numbers.min}, ele está na posição #{list_of_numbers.index(list_of_numbers.min)}.")
