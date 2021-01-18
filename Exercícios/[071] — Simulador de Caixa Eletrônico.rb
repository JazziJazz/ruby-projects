print("Simulador de caixa eletrônico.\nDigite quanto dinheiro você pretende sacar: ")
money_to_withdraw = gets.chomp.to_i

bank_note = 50
total_bank_notes = 0

while true;
    if money_to_withdraw >= bank_note;
        money_to_withdraw -= bank_note
        total_bank_notes += 1
    else
        print("Foram necessárias um total de: #{total_bank_notes} cédulas de #{bank_note}R$.\n")
        case bank_note;
            when 50
                bank_note = 20
                total_bank_notes = 0
            when 20
                bank_note = 10
                total_bank_notes = 0
            else
                if bank_note == 10;
                    bank_note = 1
                    total_bank_notes = 0
                end

                if money_to_withdraw == 0;
                    break
                end
        end
    end
end
