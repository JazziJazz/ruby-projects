print("Digite um número, iremos calcular à tabuada deste até dez: ")
number = gets.chomp.to_i

puts("Calculando à tabuada do valor: #{number}!


#{number}\tx\t1\t=\t#{sprintf("%02d", number * 1)}
#{number}\tx\t2\t=\t#{sprintf("%02d", number * 2)}
#{number}\tx\t3\t=\t#{sprintf("%02d", number * 3)}
#{number}\tx\t4\t=\t#{sprintf("%02d", number * 4)}
#{number}\tx\t5\t=\t#{sprintf("%02d", number * 5)}
#{number}\tx\t6\t=\t#{sprintf("%02d", number * 6)}
#{number}\tx\t7\t=\t#{sprintf("%02d", number * 7)}
#{number}\tx\t8\t=\t#{sprintf("%02d", number * 8)}
#{number}\tx\t9\t=\t#{sprintf("%02d", number * 9)}
#{number}\tx\t10\t=\t#{sprintf("%02d", number * 10)}")
