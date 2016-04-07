
# Create a Bingo Scorer
#
# I worked with Dominick Lombardo on this challenge.
# I spent 2 hours on this challenge.

# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]

# Pseudocode

# input: an array
# output: a true or false value based on the array passing our tests.  if true include a celebration statement

#STEPS:
# Create a class that accepts an array as an argument
# set up initialize method, define the input array as an instance variable

# create a method to check horizontal
  # iterate thru each sub-array
  # check index position 0 to see if it is an 'x'
  # IF true, check each index position in that array to see if they are all 'x'
    #IF true, return true

# create a method to check vertical
  # iterate thru each index position in the first sub-array
  # IF we find an 'x', (perhaps storing the index position as a variable)
  # THEN iterate thru each sub-array
    # check each sub array at the index position that is an "x" in the first sub array
    # IF they are all "x" THEN return true

# create a method to check diagonal left-to-right
  # check to see if first array, first index position is a 'x'
  # IF true, then iterate thru each remaining sub array
    # add 1 to index position of each iteration, checking for an 'x'

# create a method to check diagonal right-to-left
  # check to see if first array, last index position is "x"
  # if True, then iterate thru each remaining sub array
    # subtract 1 from index position in each iteration, checking for an "x"

# Initial Solution

# class Bingo

#   def initialize(bingo_board)
#     @bingo_board = bingo_board
#   end

#   def check_horizontal
#     @bingo_board.each do |row|
#       if row.all? { |index| index == "x" } then puts "BINGO!" end
#     end
#   end

#   def check_vertical
#     bingo_check = []
#     @bingo_board[0].each do |bingo_square|
#       if bingo_square == "x"
#         @x_index = @bingo_board[0].index(bingo_square)
#         @bingo_board.each do |bingo_row|
#           bingo_check << bingo_row[@x_index]
#         end
#       else
#         bingo_check << nil
#       end
#     end
#     if bingo_check.all? { |index| index == "x" } then puts "BINGO!" end
#   end

#   def check_lr_diag
#     bingo_check = []
#     index_position = 0
#     @bingo_board.each do |row|
#       bingo_check << row[index_position]
#       index_position += 1
#     end
#     if bingo_check.all? { |index| index == "x" } then puts "BINGO!" end
#   end

#   def check_rl_diag
#     bingo_check = []
#     index_position = 4
#     @bingo_board.each do |row|
#       bingo_check << row[index_position]
#       index_position -= 1
#     end
#     if bingo_check.all? { |index| index == "x" } then puts "BINGO!" end
#   end

# end


# Refactored Solution

class Bingo

  def initialize(bingo_board)
    @bingo_board = bingo_board
  end

  # Check for horizontal bingo
  def check_horizontal
    @bingo_board.each do |row|
      if row.all? { |index| index == "x" } then puts "BINGO!" end
    end
  end

  # Check for vertical bingo
  def check_vertical
    bingo_check = []
    @bingo_board[0].each do |bingo_square|
      if bingo_square == "x"
        @x_index = @bingo_board[0].index(bingo_square)
        @bingo_board.each do |bingo_row|
          bingo_check << bingo_row[@x_index]
        end
      else
        bingo_check << nil
      end
    end
    if bingo_check.all? { |index| index == "x" } then puts "BINGO!" end
  end

  # Check for left-to-right diagonal bingo
  def check_lr_diag
    bingo_check = []
    index_position = 0
    @bingo_board.each do |row|
      bingo_check << row[index_position]
      index_position += 1
    end
    if bingo_check.all? { |index| index == "x" } then puts "BINGO!" end
  end

  # Check for right-to-left diagonal bingo
  def check_rl_diag
    bingo_check = []
    index_position = 4
    @bingo_board.each do |row|
      bingo_check << row[index_position]
      index_position -= 1
    end
    if bingo_check.all? { |index| index == "x" } then puts "BINGO!" end
  end

end


# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

test_board = Bingo.new( [[47, 44, 71, 8, 88],
   ['x', 'x', 'x', 'x', 'x'],
   [83, 85, 97, 89, 57],
   [25, 31, 96, 68, 51],
   [75, 70, 54, 80, 83]])

test_board.check_horizontal
test_board.check_vertical
test_board.check_lr_diag
test_board.check_rl_diag


# Reflection

