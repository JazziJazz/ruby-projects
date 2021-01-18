sucessor_antecessor = -> (number) {
    return print("Analisando o número #{number}!\n\nO seu antecessor é igual a: #{number.pred}\nO seu sucessor é igual a: #{number.next}")
}

print("Digite um número para ser analisado: ")
number = gets.chomp.to_i

sucessor_antecessor.call(number)
