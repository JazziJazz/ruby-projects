print("Digite o valor dos três lados de um triângulo, iremos verificar se ele pode ser formado: ")
triangle = [gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i]

if (triangle[0] - triangle[1]) < triangle[2] and triangle[2] < (triangle[0] + triangle[1]) and (triangle[0] - triangle[2]) < triangle[1] and triangle[1] < (triangle[0] + triangle[2]) and (triangle[1] - triangle[2]) < triangle[0] and triangle[0] < (triangle[1] + triangle[2]);
    puts("O triângulo pode ser formado! ;3")
else
    puts("O triângulo NÃO pode ser formado. ;(")
end
