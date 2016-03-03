# Leap Years

# I worked on this challenge with: Samantha Holmes


# Your Solution Below

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 400 == 0
    return true
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 4 != 0
    return false
  end
end

puts leap_year?(2000)
puts leap_year?(2001)
