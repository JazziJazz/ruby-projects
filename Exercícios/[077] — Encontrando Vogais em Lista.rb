get_list_vowels = -> (string_to_analyse) do
    vowels = Array.new

    (0 .. string_to_analyse.length).each do |letter|
        if /[aeiou]/.match?(string_to_analyse.downcase[letter]) and not vowels.include?(string_to_analyse[letter]);
            vowels.push(string_to_analyse[letter].downcase)
        end
    end

    return vowels
end

list_of_words = %w[Sismo Fantasia Presunto Horas Planador Tanga Calças Camisa
                   Feliz Permanente]

list_of_words.each do |value|
    print("Ao todo foram encontradas #{get_list_vowels.call(value).length} vogais na palavra #{value.upcase}, sendo elas: #{get_list_vowels.call(value).join(", ")}.\n")
end
