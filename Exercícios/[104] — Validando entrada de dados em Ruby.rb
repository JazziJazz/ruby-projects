def read_integer(showMessage)
    print(showMessage)

    number = gets.chomp

    while number.to_i == 0;
        print("Erro! Aceitamos apenas entrada de dados de valor inteiro, tente novamente.\n#{showMessage}")
        number = gets.chomp
    end

    number.to_i
end

number = read_integer("Digite um número: ")
