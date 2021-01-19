find_the_higher = -> (*num) do
    highest_number = nil

    num.each do |value|
        if highest_number.nil? or value > highest_number;
            highest_number = value
        end
    end

    return highest_number
end

def find_the_higher(*num)
    higher_value = nil

    num.each do |value|
        if higher_value.nil? or value > higher_value;
            higher_value = value
        end
    end

    higher_value
end
