print("Você ira digitar dois números, iremos exibir um menu de opções logo após.\nNúmero um: ")
number_one = gets.chomp.to_f

print("Número dois: ")
number_two = gets.chomp.to_f

print("\nBem-vindo à calculadora, agora que você já tem seus números exibiremos suas opções, lembre-se se verificar\no número correto referente a opção desejada.\n\n1. Somar.\n2. Subtrair.\n3. Multiplicar.\n4. Dividir.\n5. Novos números.\n6. Encerrar o Programa.\n\nQual é a opção desejada?: ")
option = gets.chomp.to_i

while option != 6;
    case option
        when 1
            print("\nA soma dos valores #{number_one} com #{number_two} é igual a #{number_one + number_two}.")
        when 2
            print("\nA substração dos valores #{number_one} com #{number_two} é igual a #{number_one - number_two}.")
        when 3
            print("\nA multiplicação dos valores #{number_one} com #{number_two} é igual a #{number_one * number_two}.")
        when 4
            print("\nA divisão dos valores #{number_one} com #{number_two} é igual a #{number_one / number_two}.")
        when 5
            print("\nNúmero um: ")
            number_one = gets.chomp.to_f

            print("Número dois: ")
            number_two = gets.chomp.to_f
        else
            print("\nVocê digitou uma opção inválida, tente novamente.")
    end

    print("\n\n1. Somar.\n2. Subtrair.\n3. Multiplicar.\n4. Dividir.\n5. Novos números.\n6. Encerrar o Programa.\n\nQual é a opção desejada?: ")
    option = gets.chomp.to_i
end

print("\nCalculadora encerrada.")
