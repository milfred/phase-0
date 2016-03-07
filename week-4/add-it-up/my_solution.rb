# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge Diana Ozemebhoya Eromosele.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

 # our Input is the array, which is filled with integers
 # our Output is the sum of those integers
 # the argument is the array, that filled with integers


# Steps to solve the problem.

#Starting with the last integer in the array, the very last slot, we're going to add that integer to an empty bucket that has a value of 0. Then we're going to move to the left of the array, one slot at a time, and keep adding whatever integer we encounter to that empty bucket. Once we hit the first integer, we'll stop. And will return the value of the bucket.

# 1. total initial solution

def total(array)

answer = 0

#starting with the last integer in the array
x = array.length - 1

#iterating through the loop, from the last slot, to the first.
#dropping the values in the "answer" bucket.
    while x >= 0
    answer += array[x]
    x -= 1
    end

  answer

end

# def total(array)

# answer = 0
# array.each { |x|
#     answer += x
# }

# answer

# end
# 3. total refactored solution

def total(array)

array.reduce(:+)

# array.inject(:+)

end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# The Input is an array filled strings. each string is in its own slot.

# The Output will be the combination of the strings in the array, in order, from left to right. The first letter of the first string in the array should be capitalized, and a period should be added at the end of the very last string in the array.

# Also, include a space between each word in the output.


# 5. sentence_maker initial solution

def sentence_maker(array)

    new_array = array.join(" ")

    final_array = new_array + "."

    final_array.capitalize
end

# 6. sentence_maker refactored solution

#We're confident that our initial solution is one of the simplest ways to do it, since we didn't loop through the array. We used a method that breaks the array, and combines its objects together.