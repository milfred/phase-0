# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Evan Druce.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: a 16-digit integer
# Output: True or False based on the results of the checksum
# Steps:
# if number is not 16 digits, raise an error
# split up the digits into an array of strings
# convert the digits back into integers
# double every other digit, starting with the second-to-last
# sum all digits
# check to see if result is a multiple of ten; if so, return True; if not, return False


# Initial Solution

# class CreditCard

#   def initialize(number)
#     @number = number
#     if number.to_s.length != 16
#       raise ArgumentError.new("Not a valid card number")
#     end
#   end

#   def auth_splitter
#     @array_of_digits = @number.to_s.split("")
#   end

#   def auth_doubler
#       @integer_array = @array_of_digits.map { |x| x.to_i}
#       @doubled_array = @integer_array.each_with_index.map do |value, index|
#         if index.even?
#           value * 2
#         else
#           value
#         end
#       end
#   end

#   def sum_digits
#     @split_array = @doubled_array.join.to_s.split("").map{|string| string.to_i}
#     @split_and_summed = @split_array.inject(0){|sum, x| sum + x}
#   end

#   def mult_of_ten?
#     @split_and_summed % 10 == 0
#   end

#   def check_card
#     auth_splitter
#     auth_doubler
#     sum_digits
#     mult_of_ten?
#   end

# end

# puts new_card = CreditCard.new(4410493049593004)
# puts new_card.check_card


# Refactored Solution

class CreditCard

  def initialize(number)
    @number = number
    if number.to_s.length != 16
      raise ArgumentError.new("Not a valid card number")
    end
  end

  def auth_splitter
    @array_of_digits = @number.to_s.split("").map { |x| x.to_i}
  end

  def auth_doubler
      @doubled_array = @array_of_digits.each_with_index.map do |value, index|
        if index.even?
          value * 2
        else
          value
        end
      end
  end

  def sum_digits
    @split_array = @doubled_array.join.to_s.split("").map{|string| string.to_i}
    @split_and_summed = @split_array.inject(0){|sum, x| sum + x}
  end

  def mult_of_ten?
    @split_and_summed % 10 == 0
  end

  def check_card
    auth_splitter
    auth_doubler
    sum_digits
    mult_of_ten?
  end

end

puts new_card = CreditCard.new(4410493049593004)
puts new_card.check_card



# Reflection
# What was the most difficult part of this challenge for you and your pair?
# I think the thing that threw us the most was the instruction that said "Starting with the second to last digit, double every other digit until you reach the first digit." This was not the easiest task to do. Then we realized that the argument has to be 16 digits long, so it didn't matter if we started at the second to last digit and iterated from right to left. We just need to doiuble the numbers at the even indexes (e.g 0, 2, 4...).

# What new methods did you find to help you when you refactored?
# I think my pairing partner was already familiar with it, but had not used the inject method before this assignment.

# What concepts or learnings were you able to solidify in this challenge?
# The main thing that this assigment helped solidify for me was how to pass data from one method to the next and bring it all together in another method like the check_card method.