print("Iremos converter um número que você digitar para uma base numérica.\n\n1. Binário.\n2. Octal.\n3. Hexadecimal.\n\nEscolha sua opção ao lado: ")
number_option = gets.chomp.to_i

print("Por último, digite um número para que você possa converter: ")
number_to_convert = gets.chomp.to_i

case number_option
    when 1
        puts("Você escolheu converter seu número para binário.\nO número #{number} convertido para binário é igual a #{number_to_convert.to_s(2)}.")
    when 2
        puts("Você escolheu converter seu número para octal.\nO número #{number} convertido para octal é igual a #{number_to_convert.to_s(8)}.")
    when 3
        puts("Você escolheu converter seu número para hexadecimal.\nO número #{number} convertido para hexadecimal é igual a #{number_to_convert.to_s(16)}")
    else
        puts("Você escolheu uma opção invalida, reinicie o programa e tente novamente.")
end
