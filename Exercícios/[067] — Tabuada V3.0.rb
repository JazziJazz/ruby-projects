print("Iremos exibir a tabuada para você. Digite qualquer número para que seja exibida a tabuada.\nNúmero: ")
number = gets.chomp.to_i

until number <= 0;
    (1 .. 10).each do |value|
        puts("#{number}\tx\t#{value}\t=\t#{sprintf("%02d", number * value)}")
    end

    print("\nQual tabuada vem a seguir?: ")
    number = gets.chomp.to_i
end
