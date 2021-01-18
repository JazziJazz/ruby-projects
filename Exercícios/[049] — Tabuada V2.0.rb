print("Digite um número, iremos calcular à tabuada deste até dez: ")
number = gets.chomp.to_i

(1 .. 10).each do |value|
    puts("\n#{number}\tx\t#{value}\t=\t#{sprintf("%02d", number * value)}")
end
