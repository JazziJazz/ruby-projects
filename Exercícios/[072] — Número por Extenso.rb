numbers_to_write = %w[ZERO UM DOIS TRÊS QUATRO CINCO SEIS SETE OITO NOVE DEZ ONZE DOZE TREZE QUATORZE QUINZE DEZESSEIS DEZESSETE DEZOITO DEZENOVE VINTE]

print("Exibiremos a leitura de um número por extenso, apenas números de zero até vinte.\ndigite o número ao lado [0-20]: ")
number_to_read = gets.chomp.to_i

while number_to_read < 0 or number_to_read > 20;
    print("\nVocê digitou um número menor que zero ou maior do que vinte.\nTente novamente: ")
    number_to_read = gets.chomp.to_i
end

puts("\nO número que você digitou foi o #{numbers_to_write[number_to_read].downcase}.")
