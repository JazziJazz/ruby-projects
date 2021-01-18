print("Bem-vindo ao gerenciador de pagamentos.\nPor favor, nos informe o método de pagamento e iremos informa-lo se você possui direito a desconto.\n\n1. À vista, no dinheiro ou cheque.\n2. À vista no cartão.\n3. Em até duas vezes no cartão de crédito.\n4. Em três vezes ou mais no cartão de crédito.\n\nDigite a opção ao lado: ")
payment_option = gets.chomp.to_i

print("Digite o valor do produto escolhido: ")
product_value = gets.chomp.to_f

case payment_option;
    when 1
        new_product_value = product_value - (10 * product_value / 100.0)

        puts("\nVocê recebeu um desconto no valor de 10%! Não é incrível?!\nO valor original do produto era de R$#{sprintf("%.2f", product_value)}.\n\nO produto agora custa R$#{sprintf("%.2f", new_product_value)}.")
    when 2
        new_product_value = product_value - (5 * product_value / 100.0)

        puts("\nVocê recebeu um desconto no valor de 5%! Não é incrível?!\nO valor original do produto era de R$#{sprintf("%.2f", product_value)}.\n\nO produto agora custa R$#{sprintf("%.2f", new_product_value)}.")
    when 3
        puts("Infelizmente sua opção de pagamento não te dá direito a desconto.")
    when 4
        new_product_value = product_value + (20 * product_value / 100.0)

        puts("\nVocê recebeu um acrescimo no valor de 20%. \nO valor original do produto era de R$#{sprintf("%.2f", product_value)}.\n\nO produto agora custa R$#{sprintf("%.2f", new_product_value)}.")
    else
        puts("\nVocê informou uma opção inválida, reinicie o programa e verifique seu número antes de apertar ENTER.")
end
