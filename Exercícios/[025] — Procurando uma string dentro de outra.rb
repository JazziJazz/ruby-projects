print("Digite o seu nome, verificaremos se nele há o nome 'Silva'\nDigite aqui: ")
name = gets.chomp.strip.downcase

puts("\nSerá que o seu nome contém 'Silva'?: #{name.include?('silva')}")
