print("Maior e menor peso. Você ira digitar um total de sete valores que se referem aos pesos de pessoas, iremos mostrar o maior e o menor desses pesos.\n")

weight = Array.new
numbers_to_count = %w[Primeira Segunda Terceira Quarta Quinta Sexta Sétima]

(0 .. 6).each do |number|
    print("Digite o peso da #{numbers_to_count[number].downcase} pessoa: ")
    weight.push(gets.chomp.to_f)
end

puts("\nO maior peso equivale a #{weight.max} quilos.\nO menor peso equvale a #{weight.min} quilos.")
