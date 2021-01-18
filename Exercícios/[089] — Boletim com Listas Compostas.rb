list_of_students = Array.new

print("Programa de cadastramento de alunos, e notas.\n\n")

while true;
    print("Nome do Aluno(a): ")
    name_of_student = gets.chomp

    print("Nota número 1: ")
    note_one = gets.chomp.to_f

    print("Nota número 2: ")
    note_two = gets.chomp.to_f

    list_of_students.push([name_of_student, [note_one, note_two]])

    print("Deseja continuar? [S/N]: ")
    question_answer = gets.chomp.upcase.strip

    while question_answer != 'S' and question_answer != 'N';
        print("Erro! Verifique o que você digitou e tente novamente.\nDeseja continuar? [S/N]: ")
        question_answer = gets.chomp.upcase.strip
    end

    if question_answer == 'N';
        print("#{'--' * 20}\n#{'Número'.ljust(13)}#{'Nome'.ljust(13)}#{'Média'.rjust(13)}\n#{'--' * 20}\n")

        (0 .. list_of_students.length - 1).each do |value|
            print("#{value.to_s.ljust(13)}#{list_of_students[value][0].ljust(13)}#{((list_of_students[value][1][0] + list_of_students[value][1][1]) / 2).to_s.rjust(13)}\n")
        end

        while true;
            print("\nDeseja exibir as notas de qual aluno? [999-to-stop]: ")
            new_question_answer = gets.chomp.to_i

            if new_question_answer != 999;
                print("As notas de #{list_of_students[new_question_answer][0]} são iguais a:\n#{list_of_students[new_question_answer][1]}")
            else
                print("Programa encerrado!")
                break
            end
        end
        break
    end
end
