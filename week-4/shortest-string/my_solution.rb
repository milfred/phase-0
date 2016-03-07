# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

# The input for this challenge will be the list_of_words array
# The output will be the shortest string in the array
# Working from right to left, each string in the array will be checked for length
# The first string will be initially assigned as the shortest string
# It will then be compared to the next string to the left
# Whichever string is longer will become the new shortest string
# LOOP this until all strings have been compared
# Return the shortest string

# def shortest_string(list_of_words)
#   x = list_of_words.length - 1
#   shortest_word = list_of_words[x]

#   while x >=0
#     next_word = list_of_words[x -=]
#     if next_word < shortest_word
#       shortest_word = next_word
#     end
#   end
#   return shortest_word
# end

def shortest_string(list_of_words)
  list_of_words.min { |a,b| a.size <=> b.size }

end

puts shortest_string(['cat', 'zzzzzzz', 'apples'])