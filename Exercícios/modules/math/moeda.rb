def aumentar(number, to_add_a_number)
    number = number + (number * to_add_a_number / 100)
end

def diminuir(number, to_remove_a_number)
    number = number - (number * to_remove_a_number / 100)
end

def dobro(number)
    number * 2
end

def metade(number)
    number / 2
end

def moeda(number)
    'R$' + sprintf("%.2f", number).sub(".", ",")
end