print("Quantos termos da sequência Fibonacci você deseja exibir?: ")
number_of_times = gets.chomp.to_i / 2
fibonacci_number_one, fibonacci_number_two = 0, 1

(1 .. number_of_times).each do |value|
    print("#{fibonacci_number_one} ➙ #{fibonacci_number_two} ➙ ")

    fibonacci_number_one += fibonacci_number_two
    fibonacci_number_two += fibonacci_number_one
end

print("FIM!")


