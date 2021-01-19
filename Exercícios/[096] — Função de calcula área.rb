show_area = -> (height, width) {
  return height * width
}

def show_area(height, width)
    height * width
end

area_one = show_area.call(4.5, 8)
area_two = show_area(5.4, 3.2)

puts area_one, area_two
