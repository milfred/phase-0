# Pad an Array

# I worked on this challenge with: Alicia Briceland

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? New array items, minimum size, and any associated value
# What is the output? A new array or modified version of the old array
# What are the steps needed to solve the problem?

# Create destructive method
# 1. Create an empty method that takes three arguments and set the value argument equal to nil
# 2. Determine a variable equal to the number of objects in the array
# 3. Push remainder number of values to the end of the original array
# 4. Return the array with padding

# Create non-destructive method
# 1. Create an empty method that takes three arguments and set the value argument equal to nil
# 2. Define a new variable to store the new array to
# 3. Determine a variable equal to the number of objects in the array
# 4. Push remainder number of values to the end of the new array
# 5. Return the new array

# 1. Initial Solution

# def pad!(array, min_size, value = nil) #destructive
#   while array.count <= min_size
#     array << value
#     if array = min_size
#       break
#     end
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array.clone

#   while array.count <= min_size
#     new_array << value
#     if array = min_size
#       break
#     end
#   end
#   new_array
# end


# puts pad!([1,2,3], 5, nil)
# puts pad([1,2,3], 5, nil)


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 array_size = array.size
 until array_size >= min_size
   array << value
   array_size += 1
 end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
 new_array = array.clone
 array_size = array.size
 until array_size >= min_size
   new_array << value
   array_size += 1
 end
 return new_array
end


puts pad!([1,2,3], 5, nil)
puts pad([1,2,3], 5, nil)

# 4. Reflection