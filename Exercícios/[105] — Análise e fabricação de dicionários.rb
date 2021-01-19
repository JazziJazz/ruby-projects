def situation_of_students(*notes, situation)
    hash_generate = {count_of_notes: notes.count, highest_note: notes.max, lower_note: notes.min,
                     average_of_notes: notes.inject {|a, b| a + b}.to_f / notes.count}

    if situation;
        if hash_generate[:average_of_notes] >= 5;
            hash_generate[:situation] = 'Regular'
        elsif hash_generate[:average_of_notes] >= 7
            hash_generate[:situation] = 'Boa'
        else
            hash_generate[:situation] = 'Ruim'
        end
    end

    hash_generate
end

students_notes = situation_of_students(6, 5, 2, 8, 9, situation=true)
p students_notes

