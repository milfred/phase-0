# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array that contains an indeterminate number of strings
# Output: A random value from the array
# Steps:
# 1. Set two instance variables for sides and roll
# 2. Create an argument error if a negative number is passed as the argument
# 3. Randomize the list of labels
# 4. Return a random value from the list


# Initial Solution

# class Die
#   def initialize(labels)
#     if labels == []
#     raise ArgumentError.new("Only positive numbers are allowed")
#     end
#     @sides = labels.length
#     @roll = labels
#   end

#   def sides
#     @sides
#   end

#   def roll
#     @roll.shuffle.first
#   end
# end

# die = Die.new(['a', 'b', 'c', 'd', 'e'])

# Refactored Solution

class Die
  def initialize(labels)
    if labels == []
    raise ArgumentError.new("Only positive numbers are allowed")
    end
    @sides = labels.length
    @roll = labels
  end

  def sides
    @sides
  end

  def roll
    @roll.sample
  end
end

# The only thing I really found to refactor was the sample method. It does essentially the same thing as shuffle.first, but I think it's more straightforward.





# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# They were actually pretty similar. The main difference is that the input was now the value of @rolls and @sides was the length of the input. Also, since rand only works on numbers I had to find a different method to randomize the values.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# It's easier to go back and change things when methods are defined clearly and separately in a class rather than write a single method that contains all o the steps.

# What new methods did you learn when working on this challenge, if any?
# I learned the sample method which was the perfect thing for this assignment. It pulls a random value or values from an array.

# What concepts about classes were you able to solidify in this challenge?
# This challenge helped me understand how data is passed between methods within a class to then be returned elsewhere. It also showed me how classes can make code easier to modify because they are better organized.