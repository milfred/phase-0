# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution

def total(array)

# answer = 0

# x = array.length - 1

#   while x >= 0
#   # answer = answer + array[array.length - 1]
#   answer += array[x]
#   x -= 1
#   end

#   answer

# end

# array.inject(:+)

array.reduce(:+)

end


def sentence_maker(array)

array.join(" ").capitalize + "."

end