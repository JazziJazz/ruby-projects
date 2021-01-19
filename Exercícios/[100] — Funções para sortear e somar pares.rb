def generate_random_list
    [rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100)]
end

def even_in_list(list)
    sum_of_even_numbers = 0

    list.each do |value|
        unless value.odd?;
            sum_of_even_numbers += value
        end
    end

    sum_of_even_numbers
end

random_list = generate_random_list
sum_even = even_in_list(random_list)

p random_list, sum_even
