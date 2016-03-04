# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + c > b && c + b > a && a + b > c
    return true
  else
    return false
  end
end

puts valid_triangle?(1,1,1)
puts valid_triangle?(3,4,5)
puts valid_triangle?(10,10,100)