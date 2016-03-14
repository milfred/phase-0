# Numbers to Commas Solo Challenge

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is an integer
# What is the output? The output will be a string containing a number that is correctly separated by commas
# What are the steps needed to solve the problem?
# 1. Create a method that takes one argument
# 2. Convert all digits in the input number to separate objects in an array
# 3. Iterate through each object in the array from right to left and add a comma after every third digit
# 4. Join all of the digits in the array back into a single string with the commas and return the result


# 1. Initial Solution
# def separate_comma(number)
#   @array = [] #initialize new array

#   number.to_s.each_char do |c| #store each number to the array as a string
#     @array << c
#   end
#   @array_reverse = @array.reverse #reverse the array to iterate from right to left
#   @array_reverse.each_index do |i| #add commas at every third interval
#     index = (i + 1)
#     if index == 3
#       @array_reverse.insert(index, ",")
#     elsif index % 4 == 0
#       @array_reverse.insert(index, ",")
#     end
#   end
#   @array_reverse.delete_at(3) #delete extra comma in index [4]
#   if @array_reverse[-1] == "," #delete comma from the end of a 6 digit number
#     @array_reverse.delete_at(-1)
#   end
#   return @array_reverse.reverse.join.to_s #return re-reversed, joined string
# end
# print separate_comma(100000)



# 2. Refactored Solution
def separate_comma(number)
  comma_separated_number = number.to_s.reverse.split('').each_slice(3).map {|obj| obj.push(",") }.join.chop.reverse
end
puts separate_comma(100000)



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I don't think my approach changed that much from my initial solution to my refactored solution. It's just significantly more succinct. I stuck to my pseudocode pretty closely. I was originally trying to work through the problem without reversing the number before adding the commas, but I just couldn't get that to work.

# Was your pseudocode effective in helping you build a successful initial solution?
# I believe so since my solution is pretty similar to the steps in the pseudocode.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I have not used the each.slice method before. Reading about it in the Ruby docs, I felt like it would work well, for me, but since it always returns a nil value it took me a while to figure out how to return the split arrays using the maps method. I had never used that before either. The Ruby documentation was pretty straight forward about how that works as well. So it was really just trying to find the connection between the two that would work to solve my problem.

# How did you initially iterate through the data structure?
# Originally I used the the each_index method to got through every object in the array I created and insert the commas where I needed them. It passed rspec, but it made the whole solution pretty verbose and convoluted.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I believe so. It's definitely a lot less code to read through. I have a feeling there is a way to achieve the same result with less steps, but I was still very happy to get it down to one line.