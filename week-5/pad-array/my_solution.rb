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
<<<<<<< HEAD
# 2. Determine a variable equal to the number of objects in the array
# 3. Push remainder number of values to the end of the original array
=======
# 2. Create a variable equal to the number of objects in the array
# 3. Push remainder number of values to the end of the array
>>>>>>> master
# 4. Return the array with padding

# Create non-destructive method
# 1. Create an empty method that takes three arguments and set the value argument equal to nil
<<<<<<< HEAD
# 2. Define a new variable to store the new array to
# 3. Determine a variable equal to the number of objects in the array
=======
# 2. Determine a variable equal to the number of objects in the array
# 3. Create a variable equal to the number of objects in the array
>>>>>>> master
# 4. Push remainder number of values to the end of the new array
# 5. Return the new array

# 1. Initial Solution

# def pad!(array, min_size, value = nil) #destructive
<<<<<<< HEAD
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
=======
#  until array.size >= min_size
#    array << value
#  end
#  return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#  new_array = array.clone
#  until array.size >= min_size
#    array << value
#  end
#  return new_array
>>>>>>> master
# end


# puts pad!([1,2,3], 5, nil)
# puts pad([1,2,3], 5, nil)

<<<<<<< HEAD

=======
>>>>>>> master
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

<<<<<<< HEAD
# 4. Reflection
=======
# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# We certainly made the attempt. However, our original pseudocode wasn't quite right. We rewrote the pseudocode after we came up with a working solution to better understand how we should have approached it from the beginning.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Following our original pseudocode, we were evetually able to get 5 out of nine tests to pass RSpec. I think we did a good overall job of structuring our methods, but we made a couple of errors. For the non-destructive method, we were pushing the nil values into the original array instead of the new array. We also were'nt incrementing the array count up by one for each loop, so we ended up with an infinite loop.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our original solution did not pass all of the tests. We're were still getting 4 out of 9 that weren't passing.
# 1. Failure/Error: expect(pad(array, array.length + pad_size, 'apple')).to eq(array + Array.new(pad_size, 'apple'))

       # expected: ["apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple", "apple"]
       #      got: []
# 2. Failure/Error: expect(pad(empty_array, 2)).to eq([nil, nil])

       # expected: [nil, nil]
       #      got: []

       # (compared using ==)

       # Diff:
       # @@ -1,2 +1,2 @@
       # -[nil, nil]
       # +[]
# 3. Failure/Error: expect(pad(empty_array, 2, 'apple')).to eq(['apple', 'apple'])

       # expected: ["apple", "apple"]
       #      got: []

       # (compared using ==)
# 4. Failure/Error: expect(pad(empty_array, 2, {})).to eq([{}, {}])

       # expected: [{}, {}]
       #      got: []

       # (compared using ==)

       # Diff:
       # @@ -1,2 +1,2 @@
       # -[{}, {}]
       # +[]

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We worked on this assignment for quite awhile and didn't have much time to look at existing methods. The only new one we added was the clone method.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our solution is pretty readable. We did our best to choose terms that are descriptive.

# What is the difference between destructive and non-destructive methods in your own words?
# A destructive method alters the original variable. A non-destructive method leaves the variable in it's original state and creates a new one.
>>>>>>> master
