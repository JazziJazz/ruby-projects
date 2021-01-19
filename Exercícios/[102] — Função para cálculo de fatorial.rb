def show_fact(number_of_fact, show = false)
    number_to_show = 1

    unless show;
        (1 .. number_of_fact).reverse_each do |value|
            number_to_show *= value
        end
        return number_to_show
    end

    if show;
        (1 .. number_of_fact).reverse_each do |value|
            number_to_show *= value

            if value == number_to_show;
                print("#{value}! = #{value} ✖️ ")
            elsif value == 1
                print("#{value} = ")
            else
                print("#{value} ✖️ ")
            end

        end

        number_to_show
    end
end

print show_fact(5, true)
