print("Digite uma expressão matemática, iremos verificar se ela é uma expressão válida ou inválida e te informar a resposta.\nExpressão matemática: ")
mathematical_expression = gets.chomp
parentheses_count = 0

(0 .. mathematical_expression.length - 1).each do |letter|
    if mathematical_expression[letter] == "(" or mathematical_expression[letter] == ")";
        parentheses_count += 1
    end
end

if not parentheses_count.odd?;
    print("A expressão matemática é válida. Nela há o número correto de parenteses, pode haver ou não um sentido nessa expressão porém, a mesma conta com o número certo de parenteses.")
else
    print("A expressão matemática digitada é inválida. Há parenteses faltando nessa expressão, o que a torna inválida em todos os sentidos.")
end

