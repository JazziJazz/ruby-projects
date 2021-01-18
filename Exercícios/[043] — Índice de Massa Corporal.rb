print("Iremos calcular o seu IMC! Não é incrível? Será que você está com um corpo dentro dos padrões? Talvez fora?\nNão importa, o importante é se sentir bem, porém, iremos medir o seu IMC mesmo assim, é claro, só se você quiser.\n\nNos comece informando a sua altura: ")
height = gets.chomp.to_f

print("\nMuito bem, por último, mas não menos importante...\nPor gentileza nos informe o seu peso: ")
weight = gets.chomp.to_f
body_mass_index = weight / (height ** 2)

case body_mass_index;
    when 0 .. 17
        puts("\nVocê está MUITO ABAIXO do seu peso. Por favor, procure um médico urgente pois você pode apresentar problemas de saúde.")
    when 17 .. 18.49
        puts("\nVocê está ABAIXO do seu peso. Por favor, procure um médico urgente pois você pode apresentar problemas de saúde.")
    when 18.5 .. 24.99
        puts("\nVocê está no seu peso normal. Por favor, não deixe de se cuidar ou você pode apresentar problemas de saúde.")
    when 25 .. 29.99
        puts("\nVocê está acima do seu peso. Por favor, procure um médico pois você pode apresentar problemas de saúde.")
    when 30 .. 34.99
        puts("\nVocê está OBESO no grau nível UM. Por favor, procure um médico urgente pois você pode apresentar problemas de saúde.")
    when 35 .. 39.99
        puts("\nVocê está OBESO no grau nível DOIS, ESSA OBESIDADE É SEVERA. Por favor, procure um médico urgente pois você pode apresentar problemas de saúde.")
    else
        puts("\nVocê está OBESO no grau nível TRÊS, ESSA OBESIDADE É A MAIS SEVERA DE TODAS. Por favor, procure um médico urgente pois você pode apresentar problemas de saúde.")
end

