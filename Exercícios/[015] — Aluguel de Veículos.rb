print("Iremos calcular o total à pagar pelo seu veículo alugado!\nDigite quantos dias você ficou com o veículo: ")
days = (gets.chomp.to_i * 60)

print("Muito bem! Agora digite quantos quilometros você rodou com o veículo: ")
kilometers = (gets.chomp.to_f * 0.15)


puts("\nVocê deverá pagar pelo veículo um total de R$#{sprintf("%.2f", (days + kilometers))}.
Referente aos dias o valor devido é de R$#{sprintf("%.2f", days)}.
Referente a quilometragem rodada o valor fica em R$#{sprintf("%.2f", kilometers)}.")
