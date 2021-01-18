print("Você irá digitar o ano de nascimento de sete pessoas, iremos informar quantas pessoas desse grupo pertencem a maioridade.\n")

numbers_to_count = %w[Primeira Segunda Terceira Quarta Quinta Sexta Sétima]
age_counter = 0
actually_year = Time.new.year

(0 .. 6).each do |number|
    print("Digite o ano de nascimento da #{numbers_to_count[number].downcase} pessoa: ")
    year_of_birth = gets.chomp.to_i

    if (actually_year - year_of_birth) >= 21;
        age_counter += 1
    end
end

puts("\nHouve um total de #{age_counter} pessoas maior de idade.")
