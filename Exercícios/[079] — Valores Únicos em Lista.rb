list_of_numbers = Array.new
print("Iremos adicionar vários valores na lista, ao final exibiremos eles em ordem crescente.\nOs números repetidos vão ser sumariamente desconsiderados.\n\n")

while true;
    print("Digite um número [999 to stop]: ")
    number_to_push = gets.chomp.to_i

    if number_to_push == 999;
        print("Programa encerrado. A lista de números é igual a:\n#{list_of_numbers.sort}.")
        break
    end

    unless list_of_numbers.include?(number_to_push);
        list_of_numbers.push(number_to_push)
    end
end