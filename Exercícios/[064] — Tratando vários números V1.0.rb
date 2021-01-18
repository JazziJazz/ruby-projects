print("Você ira digitar vários números em sequência, ao final mostraremos qual é a soma entre eles.\nQuando vocẽ desejar parar basta digitar '999'.\n\nDigite um número [999]: ")
number = gets.chomp.to_i
count = number

while number != 999;
    print("Digite um número [999]: ")
    number = gets.chomp.to_i

    unless number == 999;
        count += number
    end
end

print("\n\nA soma total dos números foi #{count}.")

