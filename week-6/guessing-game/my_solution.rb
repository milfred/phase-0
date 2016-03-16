# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: The initial input will be a numerical answer that the user will have to try to guess. Then, when the guess method is called, it will be a whole number that will be checked to see if it does or does not match the answer.
# Output: For the solved method the output will be true or false depending on whether or not the user input matches the answer. For the guess method it will be either ":low," ":correct," or ":high."
# Steps:
# 1: Create the class GuessingGame
# 2: Define the initialize method that will take an integer as an argument
# 3: Create instance variables for answer, guess, and solved. Answer will equal the input of the initialize method.
# 4: Define the method guess that will return ":low," ":correct," or ":high" depending on the input. It will take one argument to receive the number the user guessed.
  # 1. Create an if statement that checks the user's guess.
    # 1. If it equals the answer, return :correct.
    # 2. If it is less than the answer, return :low.
    # 3. If it is higher than the answer, return :high.
# 5: Define the method solved?. It will return true or false depending on whether the guess equals the answer.
  # 1: Create an comparative statement that checks to see if the guess is equal to the answer.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(number)
#     @guess = number
#     if @guess == @answer
#       return :correct
#     elsif @guess < @answer
#       return :low
#     else
#       return :high
#     end
#   end

#   def solved?
#   @guess == @answer
#   end
# end

# puts game = GuessingGame.new(42)

# puts game.solved?

# puts game.guess(5)
# puts game.guess(102)
# puts game.guess(42)

# puts game.solved?




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @guess = number
    @guess == @answer ? (return :correct) : @guess < @answer ? (return :low) : (:high)
  end

  def solved?
  @guess == @answer
  end
end

puts game = GuessingGame.new(42)

puts game.solved?

puts game.guess(5)
puts game.guess(102)
puts game.guess(42)

puts game.solved?
puts game.guess(5)
puts game.solved?



# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?


# When should you use instance variables? What do they do for you?


# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?


# Why do you think this code requires you to return symbols? What are the benefits of using symbols?