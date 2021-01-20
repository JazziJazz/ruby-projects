def aumentar(number, to_add_a_number, formated = false)
    if not formated;
        number = number + (number * to_add_a_number / 100)
    else
        number = 'R$' + sprintf("%.2f", number + (number * to_add_a_number / 100)).sub(".", ",")
    end

    number
end

def diminuir(number, to_remove_a_number, formated = false)
    if not formated;
        number = number - (number * to_remove_a_number / 100)
    else
        number = 'R$' + sprintf("%.2f", number - (number * to_remove_a_number / 100)).sub(".", ",")
    end

    number
end

def dobro(number, formated = false)
    if not formated;
        number * 2
    else
        'R$' + sprintf("%.2f", number * 2).sub(".", ",")
    end
end

def metade(number, formated = false)
    if not formated;
        number / 2
    else
        'R$' + sprintf("%.2f", number / 2).sub(".", ",")
    end
end

def resume(number, percent_to_add, percent_to_remove)
    print("#{'-' * 50}\n#{'RESUMO DO VALOR'.center(50)}\n#{'-' * 50}
          Preço analisado:\tR$#{sprintf("%.2f", number).sub(".", ",")}
          Dobro do preço:\t#{dobro(number, true)}
          Metade do preço:\t#{metade(number, true)}
          Aumentando em #{percent_to_add}:\t#{aumentar(number, percent_to_add, true)}
          Diminuindo em #{percent_to_remove}:\t#{diminuir(number, percent_to_remove, true)}")
end
