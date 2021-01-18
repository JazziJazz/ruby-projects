print("Vamos contar todos os números pares em um intervalo de um a cinquenta, vamos lá?\n\n")

(1 .. 50).each do |number|
    unless number.odd?;
        print("#{number}, ")
    end
end
