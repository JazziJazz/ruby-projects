def can_people_vote?(year_of_birth)
    actually_year = Time.new.year

    if (actually_year - year_of_birth) < 16;
        'O voto não é permitido.'
    elsif (actually_year - year_of_birth) >= 16 and (actually_year - year_of_birth) < 18
        'O voto é opcional.'
    elsif (actually_year - year_of_birth) >= 18 and (actually_year - year_of_birth) < 70
        'O voto é obrigatório'
    elsif (actually_year - year_of_birth) >= 70
        'O voto é opcional.'
    end
end

can_people_vote = -> (year_of_birth) {
    actually_year = Time.new.year

    if (actually_year - year_of_birth) < 16;
        return 'O voto não é permitido.'
    elsif (actually_year - year_of_birth) >= 16 and (actually_year - year_of_birth) < 18
        return 'O voto é opcional.'
    elsif (actually_year - year_of_birth) >= 18 and (actually_year - year_of_birth) < 70
        return 'O voto é obrigatório'
    elsif (actually_year - year_of_birth) >= 70
        return 'O voto é opcional.'
    end
}

p can_people_vote.call(1998)
