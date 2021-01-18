is_digit = -> (args) { if args.match?(/[[:digit:]]/) and not args.match?(/[[:alpha:]]/);
                           return true
                       else
                           return false
                       end
}

is_character = -> (args) { if args.match?(/[[:alpha:]]/) and not args.match?(/[[:digit:]]/);
                               return true
                           else
                               return false
                           end
}

print("Digite algum caracter: ")
character = gets.chomp

puts("O tipo desse dado é: #{character.class}.")
puts("Só há espaços?: #{character.strip.empty?}")
puts("Só tem letras?: #{is_character.call(character)}")
puts("Só tem números?: #{is_digit.call(character)}")
puts("Ele é alfa numérico?: #{character.match?(/[[:alnum:]]/)}")
puts("Possui apenas letras maiúsculas?: #{character == character.upcase}")
puts("Possui apenas letras minúsculas?: #{character == character.downcase}")

