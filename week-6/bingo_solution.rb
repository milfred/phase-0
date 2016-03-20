# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # 1. Return a letter randomly from a hash containing (b, i, n, g, o) as the key and (0, 1, 2, 3, 4) as the values and store it to a variable
  # 2. Return a random number from 1-100 and store it to a variable

# Check the called column for the number called.
  # 1. Use the value stored in the bingo hash to check the corresponding index number in each of the inner arrays in the main bingo board array
  # 2. Check to see if the stored random number value corresponds to the number in any of the array.
  # 3. Store the location of the matching value in an array.

# If the number is in the column, replace with an 'x'
  # 1. Set the stored location to equal 'x.'

# Display a column to the console
  # 1. Print all values from the corresponding index value in each inner array formatted as a column.

# Display the board to the console (prettily)
  # 1. Print the entire board to the console with updated values if there was a match. Otherwise return the board as it was.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @rand_num = Random.new
#     @letters = {0 => "B", 1 => "I", 2 => "N", 3 => "G", 4 => "O"}
#     @letter = @letters.values.sample
#     @number = @rand_num.rand(1..100)
#   end

#   def pull
#     puts @letter + @number.to_s + "!"
#   end

#   def check
#     @column = @letters.key(@letter)
#     puts @letter
#     @bingo_board.map! do |inner_array|
#       inner_array.each_with_index.map do |v, i|
#         if i == @column && v == @number
#           inner_array[i] = "X"
#         else
#           v
#         end
#       end
#     end
#   end

#   def print_column
#     @bingo_board.map do |inner_array|
#       inner_array.each_with_index do |v, i|
#         if i == @column
#         puts inner_array[i]
#         end
#       end
#     end
#     return nil
#   end

#   def print_board
#     puts @letters.values.join("  ")
#     puts @bingo_board[0].join(" ")
#     puts @bingo_board[1].join(" ")
#     puts @bingo_board[2].join(" ")
#     puts @bingo_board[3].join(" ")
#     puts @bingo_board[4].join(" ")
#   end

#   def call
#     pull
#     check
#     print_column
#     print_board
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = {0 => "B", 1 => "I", 2 => "N", 3 => "G", 4 => "O"}
  end

  def pull
    rand_number = Random.new
    @letter = @letters.values.sample
    @number = rand_number.rand(1..100)
    puts @letter + @number.to_s + "!"
  end

  def check
    @column = @letters.key(@letter)
    @bingo_board.map! do |inner_array|
      inner_array.each_with_index.map do |v, i|
        if i == @column && v == @number
          inner_array[i] = "X"
        else
          v
        end
      end
    end
  end

  def print_column
    puts @letter
    @bingo_board.map do |inner_array|
      inner_array.each_with_index do |v, i|
        if i == @column
        puts inner_array[i]
        end
      end
    end
    return nil
  end

  def print_board
    puts @letters.values.join("  ")
    @bingo_board.each_index { |index| puts @bingo_board[index].join(" ") }
  end

  def pause
    3.times do
      print "."
      sleep 0.7
    end
    puts
  end

  def call
    pull
    pause
    check
    print_column
    pause
    print_board
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding for this challenge was a bit difficult. It's one of the more complicated challenges we've had to complete and I wasn't exactly sure how I was going to achieve a working solution. I think I need to work on putting coding out of my mind and just focus on the logic when pseudocoding.

# What are the benefits of using a class for this challenge?
# Using a class allows you to write separate methods for the different steps needed to accomplish your goal. You can also use instance methods to pass data from one method to another.

# How can you access coordinates in a nested array?
# By chaining indexes together after the name of the variable.

# What methods did you use to access and modify the array?
# I mainly used map and each_with_index for this challenge.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I didn't end up using, but I looked into the detect method. Detect passes each object in a collection to the supplied block and returns the first value that evaluates to true. It's called like this: (1..50).detect { |obj| obj > 10 } #=> 11

# How did you determine what should be an instance variable versus a local variable?
# I used instance variables if I needed to use the variable outside of the method it was created in.

# What do you feel is most improved in your refactored solution?
# I realized that my initial solution had the randomized letter and number stored to variables in the initialize method. It didn't seem like a problem when I tested the file by running "ruby bing_solution.rb" in the command line. However, in irb, I found that every time I called my "call method" to get a new number, it spit out the first randomized value over and over again. Never changing. I realized I had to pull the letter and number variables out of the initialize method to get them to set a new value each time the call method is called.