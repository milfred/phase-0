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
    if sides.to_i <= 0
    raise ArgumentError.new("Only positive numbers are allowed")
    end
    @sides = sides
    @roll = roll
  end

  def sides
    @sides
  end

  def roll
    @roll = Random.new
    @roll.rand(@sides) + 1
  end

end

die = Die.new(12)



# 3. Refactored Solution

# I didn't really find anything in the docs that I thought would improve my initial solution this time.





# 4. Reflection
# What is an ArgumentError and why would you use one?
# An ArgumentError is a an error message that is triggered when either not enough arguments are passed to a method, the type of object is passed, or the programmer has set up an ArgumentError to be triggered if specific values are entered as an argument.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I think the only one I hadn't used before was rand(). I was able to implement it without much trouble.

# What is a Ruby class?
# A class is like a blueprint for a group of methods. It tells you what their names are and how to use them.

# Why would you use a Ruby class?
# To contain new methods specifically written by you. This would speed up coding time.

# What is the difference between a local variable and an instance variable?
# A local variabe is only available within it's current context. An instance variable is available throughout a class.

# Where can an instance variable be used?
# Anywhere within a class.