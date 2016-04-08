# I worked on this challenge by myself.
# This challenge took me 2 hours.

# Pseudocode
# input: an integer
# output: true or false
# Steps:
  # 1. Create a variable and set it equal to 0. This will be used to represent the current number in the sequence.
  # 1. Create a loop that cycles through the Fibonacci sequence when the supplied argument is greater than the current number in the Fibonacci sequence or it matches the current number.
  # 2. If it matches a number in the sequence, return true
  # 3. Else return false


# Initial Solution

# def is_fibonacci?(num)
#   x = 0
#   y = 1
#   while num >= x + y
#     if num == (x + y)
#       break
#     else num != (x + y)
#       z = x + y
#       x = y
#       y = z
#     end
#   end
#   if num == (x + y) || num == 0
#     true
#   else
#     false
#   end
# end


# Refactored Solution

def is_fibonacci?(num)
  sequence = [0, 1]
  while num > sequence.last
    x, y = sequence.pop(2)
    sequence.push(x, y, x + y)
  end
  if num == sequence.last
    true
  else
    false
  end
end

# puts is_fibonacci?(317811)


# Reflection

