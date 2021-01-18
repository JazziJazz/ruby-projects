print("Vamos exibir uma progressão aritmética!\nDigite o primeiro termo dessa PA, vamos exibir os dez primeiros termos: ")
arithmetic_progression = gets.chomp.to_i

print("Qual é a razão dessa PA?: ")
reason = gets.chomp.to_i

(1 .. 10).each do |value|
    if value == 10;
        print("#{arithmetic_progression} ➙ FIM")
    else
        print("#{arithmetic_progression} ➙ ")
    end

    arithmetic_progression += reason
end
