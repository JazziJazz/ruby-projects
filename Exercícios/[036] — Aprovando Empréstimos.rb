print("Bem-vindo ao simulador de financiamento!\nDigite o valor do seu salário: ")
salary = gets.chomp.to_f

print("Qual é o valor do imóvel?: ")
house_value = gets.chomp.to_f

print("Em quantos anos você espera pagar o imóvel?: ")
years_of_payments = gets.chomp.to_i


approval_calculation = house_value / (years_of_payments * 12)

if approval_calculation > salary * 0.3;
    puts("Infelizmente o financiamento não pode continuar pois o valor da parcela supera trinta porcento do seu salário total. O valor da parcela ficou em R$#{sprintf("%.2f", approval_calculation)} e trinta porcento do seu salário é igual a R$#{sprintf("%.2f", (salary * 0.3))}.")
else
    puts("Parabéns! O financiamento do seu imóvel está aprovado. Você deverá pagar parcelas mensais no valor de R$#{sprintf("%.2f", approval_calculation)} durante esses #{years_of_payments} de contrato.")
end
