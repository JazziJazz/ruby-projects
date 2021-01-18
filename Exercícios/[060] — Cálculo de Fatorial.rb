fact = 1

(1 .. 5).reverse_each do |value|
    fact *= value
end

print("5! = 5 x 4 x 3 x 2 x 1 = #{fact}")
