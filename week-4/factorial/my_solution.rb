# Factorial

# I worked on this challenge with: Diana Ozemebhoya.


# Your Solution Below
def factorial(number)
  # Take a number and multiply it by each number that is one less than it until you reach 1.
  # This block of code is accounting for how the factorial of zero is deined to be one.
  if number == 0
    return 1
  end
  # 5 * 4 * 3 * 2 * 1 = 120

  answer = number
  while number > 1
    answer = answer * (number -1)
    number -= 1

  end
  return answer
end

puts factorial(5)