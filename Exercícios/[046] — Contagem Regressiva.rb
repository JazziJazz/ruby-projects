print("Faltam dez segundos para virada do ano antes dos fogos. Vamos contar juntos?!\n\n")

(1 .. 10).reverse_each do |i|
    sleep(1)
    puts(i)
end

puts("\n✨✨✨ Fogos de artifício ✨✨✨")

