# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below



def largest_integer(list_of_nums)
#   largest = 0
#   x = list_of_nums.length - 1

   # x is equal to the highest position in the array, so largest now equals the last number in the array

   #now I want to compare the current largest number to the next number down in the array. If the next number is larger it should become the new largest.
#   until x == 0

#     end
#   end

return list_of_nums.max

end

 puts largest_integer([10, 0, 10])
 puts largest_integer([-10, -20, -30, 5])


