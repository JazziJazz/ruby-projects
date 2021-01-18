require 'prime'

print("Digite um número, iremos te informar imediatamente se ele é um número primo.\nNúmero: ")
number_prime = gets.chomp.to_i

puts("\nO número escolhido por você é #{number_prime}.")

if number_prime.prime?;
    puts("O número é primo.")
else
    puts("O número informado não é primo.")
end
