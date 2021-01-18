print("Digite alguma coisa, iremos executar algumas verificações nessa string.\nDigite aqui: ")
content = gets.chomp

puts("A letra 'A' aparece um total de #{content.count("a")} vez(es) na string.
A primeira vez que aparece a letra A é na posição #{content.index("a")}.
A última vez que ela aparece é na posição #{content.rindex("a")}.")
