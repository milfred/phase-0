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
# I think that in general, a method is representative of an action and a variable represents a thing. In this assignment it is a bit harder to see because a word like guess can be both a verb and a noun. So the method "guess" is the act of guessing and the variable @guess is the actual guess itself. In this case the guess takes the form of a number which is why I chose that label for the argument being passed to the guess method.

# When should you use instance variables? What do they do for you?
# You should use instance variables when you want the information in a variable to be available outside of it's current context. For example, if you want to variable data to be used in multiple methods within the same class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is how you control branching in your code. In this case I used an if statement to control the flow of the program and return one of three different values for the guess method.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Since the program runs if I use either strings or symbols, I would assume we're using it for two reasons. First, the values we used strings for don't need to be manipulated in any way, so it's okay to use a symbol. Even if we did want to manipulate them, we could use the .to_s method to convert them to strings. Second, it's not as big an issue in this simple program, but using symbols can improve performance. A symbol is unique, so it will always have the same numerical representation. Every string, even if it has the same value (i.e. "my value"), has a separate numerical representation which uses more memory. In fact, I did test the program both ways and the one with symbols finished in 0.0s and the version with strings finished in 0.1s. Not really a big difference, but for a larger program it could be significant.