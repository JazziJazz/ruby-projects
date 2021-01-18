print("Qual é o seu sexo? [M/F]: ")
gender = gets.chomp.upcase.strip

while not gender.include?("M") and not gender.include?("F");
    print("Erro! Verifique o que você digitou e tente novamente, só há duas opções.\nQual é o seu sexo? [M/F]: ")
    gender = gets.chomp.upcase.strip
end
