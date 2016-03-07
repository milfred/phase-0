# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# The input for this challenge will be the list_of_words array
# The output will be the longest string in the array
# Working from right to left, each string in the array will be checked for length
# The first string will be initially assigned as the longest string
# It will then be compared to the next string to the left
# Whichever string is longer will become the new longest string
# LOOP this until all strings have been compared
# Return the longest string

# Your Solution Below



# def longest_string(list_of_words)
#   x = list_of_words.length - 1
#   longest_word = list_of_words[x]

#   while x >=0
#     next_word = list_of_words[x -=]
#     if next_word > longest_word
#       longest_word = next_word
#     end
#   end
#   return longest_word
# end

def longest_string(list_of_words)
  list_of_words.max { |a,b| a.size <=> b.size }

end
