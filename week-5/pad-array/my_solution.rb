# Pad an Array

# I worked on this challenge with: Alicia

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? New array items, minimum size, and any associated value
# What is the output? A new array or modified version of the old array
# What are the steps needed to solve the problem?

# 1. Define an array
# 2. Define the minimum size
# 3. Define the value as nil
# 4. Iterate over the array with each
# 5. Return the array with padding


# 1. Initial Solution

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


# 3. Refactored Solution



# 4. Reflection