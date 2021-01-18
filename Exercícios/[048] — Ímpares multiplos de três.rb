sum_odd = 0
count = 0

(1 .. 500).each do |value|
    if value.odd? and value % 3 == 0;
        sum_odd += value
        count += 1
    end
end

puts("A soma total dos números é de #{sum_odd}, foi um total de #{count} números.")
