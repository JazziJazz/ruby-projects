print("Iremos mostrar algumas estatísticas da sua compra, vamos lá?")

total_amount_spent = 0
expensive_products = 0
cheapest_product_name = nil
cheapest_product_value = nil

while true;
    print("\nQual é o nome do produto?: ")
    product_name = gets.chomp.strip.capitalize

    print("Qual é o valor desse produto?: ")
    value_of_product = gets.chomp.to_i
    total_amount_spent += value_of_product

    if value_of_product >= 1000;
        expensive_products += 1
    end

    if cheapest_product_name.nil? or (value_of_product < cheapest_product_value);
        cheapest_product_name = product_name
        cheapest_product_value = value_of_product
    end

    print("Você deseja cadastrar mais produtos? [S/n]: ")
    question = gets.chomp.strip.upcase

    if question == 'N';
        print("Você gastou um total de R$#{total_amount_spent} na sua compra. Houve um total de #{expensive_products} que custaram mais de R$1.000,00.\nO produto mais barato foi a(o) #{cheapest_product_name} que custou R$#{cheapest_product_value}.")
        break
    end
end

