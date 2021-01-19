count_lambda = -> (start = 0, the_end = 10, step = 1) {
  print("Iniciando uma contagem do zero até o dez, pulando de um em um:\n")
  (start .. the_end).each {|value| print("#{value} → "); sleep(1)}
  print("FIM!")

  print("\nIniciando uma contagem do dez até o zero, pulando de dois em dois:\n")
  (start .. the_end).step(2).reverse_each {|value| print("#{value} → "); sleep(1)}
  print("FIM!")

  print("\nAgora é sua vez!\nVocê quer começar contando de onde?: ")
  start = gets.chomp.to_i

  print("E você quer ir até que número?: ")
  the_end = gets.chomp.to_i

  print("Pulando de quanto em quanto?: ")
  step = gets.chomp.to_i

  if start <= the_end;
      (start .. the_end).step(step) {|value| print("#{value} → "); sleep(1)}
      print("FIM!")
  else
      (the_end .. start).step(step).reverse_each {|value| print("#{value} → "); sleep(1)}
      print("FIM!")
  end
}

def personal_count(start = 0, the_end = 10, step = 1)
    print("Iniciando uma contagem do zero até o dez, pulando de um em um:\n")
    (start .. the_end).each {|value| print("#{value} → "); sleep(1)}
    print("FIM!")

    print("\nIniciando uma contagem do dez até o zero, pulando de dois em dois:\n")
    (start .. the_end).step(2).reverse_each {|value| print("#{value} → "); sleep(1)}
    print("FIM!")

    print("\nAgora é sua vez!\nVocê quer começar contando de onde?: ")
    start = gets.chomp.to_i

    print("E você quer ir até que número?: ")
    the_end = gets.chomp.to_i

    print("Pulando de quanto em quanto?: ")
    step = gets.chomp.to_i

    if start <= the_end;
        (start .. the_end).step(step) {|value| print("#{value} → "); sleep(1)}
        print("FIM!")
    else
        (the_end .. start).step(step).reverse_each {|value| print("#{value} → "); sleep(1)}
        print("FIM!")
    end
end

personal_count
