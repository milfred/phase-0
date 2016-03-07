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

<<<<<<< HEAD
def smallest_integer(list_of_nums)
  if list_of_nums[0].to_i <= list_of_nums[1].to_i && list_of_nums[0].to_i <= list_of_nums[2].to_i
    return list_of_nums[0].to_i
  elsif list_of_nums[1].to_i <= list_of_nums[0].to_i && list_of_nums[1].to_i <= list_of_nums[2].to_i
    return list_of_nums[1]
  elsif list_of_nums[2].to_i <= list_of_nums[0].to_i && list_of_nums[2].to_i <= list_of_nums[1].to_i
    return list_of_nums[2].to_i
  end
end

puts smallest_integer([1, 2, 3])
puts smallest_integer([3, -2, 1])
puts smallest_integer([1, 1, 1])
puts smallest_integer([5, 5, 2])
puts smallest_integer([])
puts smallest_integer([11, 42, 1, 85, 83, 13, 93, 9, 91, 80, 82, 43, 49, 98, 77, 90, 74, 45, 44, 84, 76, 6, 16, 86, 95, 64, 96, 17, 29, 41, 31, 69, 58, 62, 33, 52, 68, 28, 100, 36, 56, 46, 57, 67, 70, 55, 99, 26, 81, 21, 35, 30, 97, 24, 4, 73, 47, 75, 20, 63, 37, 71, 60, 54, 12, 2, 27, 48, 15, 40, 5, 25, 38, 18, 72, 19, 79, 8, 88, 23, 89, 39, 51, 87, 78, 61, 32, 66, 14, 22, 10, 94, 59, 3, 65, 50, 7, 53, 92, 34])
=======
# Input is an array of integers and output is the smallest integer in the array.
# [5, 10, 3, 25]
# Separate inegers and compare them

def smallest_integer(list_of_nums)
  return list_of_nums.min
end

def smallest_integer(list_of_nums)

end

puts smallest_integer([4, 6, 223, 8])
>>>>>>> master
