module Menu
    def self.create_menu(text_to_show)
        text_length = text_to_show.length

        print("#{'-' * (text_length + 4)}\n#{text_to_show.center(text_length + 4)}\n#{'-' * (text_length + 4)}\n\n1. Ver pessoas cadastradas.\n2. Cadastrar nova pessoa.\n3. Sair do sistema.\n\n")
    end

    def self.create_top_menu(text_to_show)
        text_length = text_to_show.length

        print("#{'-' * (text_length + 4)}\n#{text_to_show.center(text_length + 4)}\n#{'-' * (text_length + 4)}\n")
    end
end

module People
    include Menu

    def self.run_system(menu_text)
        Menu.create_menu(menu_text)

        while true
            print("Qual sua opção?: ")
            option_choice = gets.chomp.to_i

            case option_choice
                when 1
                    self.show_peoples
                when 2
                    print("Qual é o nome da pessoa a ser cadastrada?: ")
                    name_of_people = gets.chomp

                    print("Qual é a idade da pessoa a ser cadastrada?: ")
                    age_of_people = gets.chomp

                    while age_of_people.to_i == 0 or age_of_people == "0";
                        print("Erro! Apenas números podem ser digitados aqui.\nQual é a idade da pessoa a ser cadastrada?: ")
                        age_of_people = gets.chomp
                    end

                    age_of_people = age_of_people.to_i

                    self.append_people(name_of_people, age_of_people)
                else
                    print("\nCadastro de pessoas encerrado.")
                    break
            end

            sleep(1)
        end
    end

    def self.append_people(name, age)
        File.open('/home/rodrigosc/RubymineProjects/RubyTesteProject/modules/cad_people/system-peoples.txt', 'a+') do |file|
            file.write("#{name};#{age} anos\n")
        end
    end

    def self.show_peoples
        begin
            file = File.open('/home/rodrigosc/RubymineProjects/RubyTesteProject/modules/cad_people/system-peoples.txt', 'r')

            if File.zero?( "/home/rodrigosc/RubymineProjects/RubyTesteProject/modules/cad_people/system-peoples.txt" );
                raise TypeError
            end
        rescue (TypeError)
            print("Não há nenhuma pessoa cadastrada.\n\n")
        else
            Menu.create_top_menu("PESSOAS CADASTRADAS ATÉ O MOMENTO")
            file.each do |line|
                nome, idade = line.split(";")[0], line.split(";")[1]

                puts("#{nome.ljust(15)}#{(idade).rjust(22)}")
            end
        end
    end
end
