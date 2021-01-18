print("Digite o ano de nascimento do atleta, iremos encontrar a posição compatível com sua idade para que ele possa ingressar na acadêmia: ")
year_of_birth = Time.new.year - gets.chomp.to_i

if year_of_birth <= 9;
    puts("A categoria que esse(a) atleta pertence é a: MIRIM.")
elsif year_of_birth <= 14
    puts("A categoria que esse(a) atleta pertence é a: INFANTIL.")
elsif year_of_birth <= 19
    puts("A categoria que esse(a) atleta pertence é a: JUNIOR.")
elsif year_of_birth == 20
    puts("A categoria que esse(a) atleta pertence é a: SÊNIOR.")
else
    puts("A categoria que esse(a) atleta pertence é a: MASTER.")
end
