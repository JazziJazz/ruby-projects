list_of_products = [['Lapis', 1.75], ['Borracha', 2.50], ['Kit de Canetas', 9.50],
                    ['Caderno de duas matérias', 22.99], ['Estojo', 15.30], ['Livro', 50.00]]

puts("#{'--' * 20}\n#{"LISTA DE PRODUTOS DISPONÍVEIS".center(40)}\n#{'--' * 20}\n")

list_of_products.each do |name, value|
    print("#{name.ljust(32, ".")}R$#{sprintf("%#6.2f", value)}\n")
end

print("#{'--' * 20}")
