print("Digite o ano que você nasceu, iremos verificar algumas informações sobre seu alistamento militar: ")
age = Time.new.year - gets.chomp.to_i

if age < 18;
    puts("Você ainda é muito novo para se alistar, ainda faltam #{18 - age} anos para se alistar.")
elsif age > 18
    puts("Você passou da idade de se alistar, você está atrasado em #{age - 18} ano(s).")
else
    puts("É hora de se alistar! Está no ano de prestar contas com a sua pátria.")
end


