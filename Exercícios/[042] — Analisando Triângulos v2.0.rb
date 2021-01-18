print("Digite o valor dos três lados de um triângulo, iremos verificar se ele pode ser formado: ")
triangle = [gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i]

if (triangle[0] - triangle[1]) < triangle[2] and triangle[2] < (triangle[0] + triangle[1]) and (triangle[0] - triangle[2]) < triangle[1] and triangle[1] < (triangle[0] + triangle[2]) and (triangle[1] - triangle[2]) < triangle[0] and triangle[0] < (triangle[1] + triangle[2]);

    if triangle[0] != triangle[1] and triangle[0] != triangle[2];
        puts("O triângulo pode ser formado! ;3\nEle é do tipo ESCALENO.")
    elsif triangle[0] == triangle[1] and triangle[0] == triangle[2];
        puts("O triângulo pode ser formado! ;3\nEle é do tipo EQUILÁTERO.")
    elsif triangle[0] == triangle[1] or triangle[0] == triangle[2];
        puts("O triângulo pode ser formado! ;3\nEle é do tipo ISÓSCELES.")
    end
else
    puts("O triângulo NÃO pode ser formado. ;(")
end

