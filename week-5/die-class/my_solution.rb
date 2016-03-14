# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: An integer representing the number of sides on a die
# Output: A single value between 1 and the input
# Steps:
# 1. Set two instance variables for sides and roll
# 2. Create an argument error if a negative number is passed as the argument
# 3. Create a sides method that creates an array of numbers from 1 to the number of sides
# 4. Create the roll method to return a random number from within the sides array


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    @roll = roll
    unless @sides > 0
    raise ArgumentError.new("Only positive numbers are allowed")
  end

  def sides

  end

  def roll
    # code goes here
  end
end



# 3. Refactored Solution







# 4. Reflection