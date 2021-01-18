print("Digite uma frase, nós iremos executar uma verificação para você. Verificaremos se a frase digitada é um palíndromo.\nDigite sua frase ao lado: ")
phrase = gets.chomp.strip.downcase

if phrase.gsub(" ", "") ==  phrase.gsub(" ", "").reverse;
    puts("A frase se trata de um palíndromo.")
else
    puts("A frase não é um palíndromo.")
end
