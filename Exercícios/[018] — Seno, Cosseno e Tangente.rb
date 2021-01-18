to_radian = -> (number, type) {
    if (type.upcase) == "RADS";
        return number * (180.0 / Math::PI)
    end

    if (type.upcase) == "DEGS";
        return number * (Math::PI / 180.0)
    end
}

print("Bem-vindo, acharemos o seno, cosseno e a tangente por você!\nDigite o valor de um ângulo: ")
angulo = gets.chomp.to_f

seno = sprintf("%.2f", Math.sin(to_radian.call(angulo, "degs")).round(2))
cosseno = Math.cos(to_radian.call(angulo, "degs")).round(2)
tangente = Math.tan(to_radian.call(angulo, "degs")).round(2)

puts("
O seno é igual a #{seno}.
O cosseno é igual a #{cosseno}.
A tangente é igual a #{tangente}.")

