# Calculate a Grade

# I worked on this challenge with: Samantha Holmes


# Your Solution Below

def get_grade (x)
  if x <= 59
  return "F"
  elsif x > 59 && x < 70
  return "D"
  elsif x > 69 && x < 80
  return "C"
  elsif x > 79 && x < 90
  return "B"
  elsif x > 89 && x <= 100
  return "A"
  else
  return "Invalid Grade"
  end
end

puts get_grade(89)
puts get_grade(70)
puts get_grade(40)
puts get_grade(100)