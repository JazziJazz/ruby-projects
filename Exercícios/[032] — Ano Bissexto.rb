print("Digite um ano, iremos informa-lo se esse ano é bissexto ou não. Se preferir, pode digitar o número zero e iremos contar como se fosse o ano atual.\nAno: ")
year = gets.chomp.to_i

if year == 0;
    year = Time.new.year

    if year % 4 == 0;
        puts("O ano é bissexto.")
    else
        puts("O ano não é bissexto.")
    end
else
    if year % 4 == 0;
        puts("O ano é bissexto.")
    else
        puts("O ano não é bissexto.")
    end
end
