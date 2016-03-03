# Calculate a Grade

# I worked on this challenge with: Samantha Holmes


# Your Solution Below

def get_grade (grade)
  if grade <= 59
  return "F"
  elsif grade > 59 && grade < 70
  return "D"
  elsif grade > 69 && grade < 80
  return "C"
  elsif grade > 79 && grade < 90
  return "B"
  elsif grade > 89 && grade <= 100
  return "A"
  else
  return "Invalid Grade"
  end
end

puts get_grade(89)
puts get_grade(70)
puts get_grade(40)
puts get_grade(100)