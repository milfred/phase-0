# Calculate the mode Pairing Challenge

# I worked on this challenge [with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
  # an Array of numbers or Strings
# What is the output? (i.e. What should the code return?)
  # Return an Array of most frequent values
    # Returns an Array if there is only one most frequent values.

# What are the steps needed to solve the problem?
  # Store an Array into a Hash
  # Store Array elements as Keys
  # Store frequency of elements as Values

  # Return an array with most frequent values
  # Else
    # Return an original array if there is only one most frequent value.


# 1. Initial Solution

# def mode(numbers)

#   new_numbers = {}

#   max_num = 0 #to count frequency

#   result_array = [] #result array of most frequent values

#   numbers.each do |x|

#     if (new_numbers.has_key?(x))
#       new_numbers[x] += 1
#     else
#       new_numbers.store(x, 1)

#     end
#   end

#   puts new_numbers

#   # count frequency of elements

#   new_numbers.each do |x, y|

#     puts "key #{x} value #{y}"

#     if(y > max_num)
#       # max_num = y

#       puts "if block "

#       result_array = []
#     end

#     if (y >= max_num)
#       max_num = y

#       puts "if block "

#       result_array << x
#     end



#   end
#   puts "results #{result_array}"
#   return result_array





#   puts numbers





# end

# a1 = [1,2,2,3,3]

# mode(a1)


# 3. Refactored Solution

# def mode(numbers)

#   new_numbers = {} #initialize hash to handle the input

#   max_num = 0 #to count frequency

#   result_array = [] #result array of most frequent values

#   numbers.each do |x|

#     if (new_numbers.has_key?(x))
#       new_numbers[x] += 1
#     else
#       new_numbers.store(x, 1)

#     end
#   end

#   puts new_numbers

#   # count frequency of elements

#   new_numbers.each do |x, y|

#     puts "key #{x} value #{y}"

#     if(y > max_num)
#       # max_num = y

#       puts "if block "

#       result_array = []
#     end

#     if (y >= max_num)
#       max_num = y

#       puts "if block "

#       result_array << x
#     end
#   end
#   puts "results #{result_array}"
#   return result_array

#   puts numbers

# end



def mode(numbers)
  counts = numbers.each_with_object(Hash.new(0)) { |numbers, counts| counts[numbers] += 1 }
  @max = []
  counts.each do |key, value|
    index = 0
    if value == counts.values.max
      @max << key
      index += 1
    end
  end
  return @max

end

a1 = [1,2,2,3,3]

print mode(a1)


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We decided to take the input array and store it as the key in a hash, so we could then count the instances in the array and assign that to the value. Then we could find the mode by using the value and return the resulting number(s) using the key.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# I believe so. The pseudo code is definitely much closer to our resulting code than it was with my last pairing.

# What issues/successes did you run into when translating your pseudocode to code?
# Our biggest issue was creating the hash with the key/value pairs we wanted.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# For the initial code we just used each. When refactoring I found each_with_object. It allowed me to create a hash and store the correct key/value pairs in one line of code. It took me a while to figure out how to use it to accomplish that task. To be honest, I think I still need to research it more to fully understand it's capabilites.