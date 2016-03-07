# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

# Input is an array of integers and output is the smallest integer in the array.
# [5, 10, 3, 25]
# Separate inegers and compare them

def smallest_integer(list_of_nums)
  return list_of_nums.min
end

puts smallest_integer([4, 6, 223, 8])
