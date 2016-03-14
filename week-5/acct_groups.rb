students = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Benjamin R Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "Ruo Yu Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

# Input: An array of cohort member names
# Output: An array with values that are hashes containing members of each accountability group. Accountability group numbers wil. be the key and member names will be the value
# Write a method that takes two arguments for the creation of a hash.
# Initialize a hash
# Check to see of array length has a remainder of 3 or more when divided by 5
# If it is, use the each_slice method with a value of 5 to separate it into a hash
# If not, check to see if the array legth has a remainder of 3 or more when divided by 4
#
# If it is, use the split_each method with a value of 4 to separate it into a hash
# Return the array with hashes

# Initial Solution

# def accountability_group_picker(names)
#   @list_size = names.length
#   if names.length % 5 == 0
#     keys = Array.new(@list_size / 5) { |index| index += 1 }
#     @accountability_groups = Hash[keys.zip(names.each_slice(5))]
#   elsif @list_size % 4 == 0
#     keys = Array.new(@list_size / 4) { |index| index += 1 }
#     @accountability_groups = Hash[keys.zip(names.each_slice(4))]
#   elsif @list_size % 5 >= 3
#     keys = Array.new((@list_size / 5) + 1) { |index| index += 1 }
#     @accountability_groups = Hash[keys.zip(names.each_slice(5))]
#   elsif @list_size % 4 >= 3
#     keys = Array.new((@list_size / 4) + 1) { |index| index += 1 }
#     @accountability_groups = Hash[keys.zip(names.each_slice(4))]
#   elsif @list_size % 3 == 0
#     keys = Array.new(@list_size / 3) { |index| index += 1 }
#     @accountability_groups = Hash[keys.zip(names.each_slice(3))]
#   elsif @list_size % 4 < 3
#     keys = Array.new((@list_size / 3) + 1) { |index| index += 1 }
#     @accountability_groups = Hash[keys.zip(names.each_slice(3))]
#     @accountability_groups[(@list_size / 3)].unshift(@accountability_groups[((@list_size / 3) + 1)])
#     @accountability_groups.delete_if { |key, value| key == (@list_size / 3) + 1 }
#     @accountability_groups[@list_size / 3].replace(@accountability_groups[@list_size / 3].flatten)
#   end
#   @accountability_groups.each_pair do |key, value|
#     puts "Accountability Group #{key} includes: " + value.join(", ")
#   end
# end

# Refactored Solution

def accountability_group_picker(names)
  names = names.shuffle
  @list_size = names.length
  if names.length % 5 == 0
    keys = Array.new(@list_size / 5) { |index| index += 1 }
    @accountability_groups = Hash[keys.zip(names.each_slice(5))]
  elsif @list_size % 4 == 0
    keys = Array.new(@list_size / 4) { |index| index += 1 }
    @accountability_groups = Hash[keys.zip(names.each_slice(4))]
  elsif @list_size % 5 >= 3
    keys = Array.new((@list_size / 5) + 1) { |index| index += 1 }
    @accountability_groups = Hash[keys.zip(names.each_slice(5))]
  elsif @list_size % 4 >= 3
    keys = Array.new((@list_size / 4) + 1) { |index| index += 1 }
    @accountability_groups = Hash[keys.zip(names.each_slice(4))]
  elsif @list_size % 3 == 0
    keys = Array.new(@list_size / 3) { |index| index += 1 }
    @accountability_groups = Hash[keys.zip(names.each_slice(3))]
  elsif @list_size % 4 < 3
    keys = Array.new((@list_size / 3) + 1) { |index| index += 1 }
    @accountability_groups = Hash[keys.zip(names.each_slice(3))]
    @accountability_groups[(@list_size / 3)].unshift(@accountability_groups[((@list_size / 3) + 1)])
    @accountability_groups.delete_if { |key, value| key == (@list_size / 3) + 1 }
    @accountability_groups[@list_size / 3].replace(@accountability_groups[@list_size / 3].flatten)
  end
  @accountability_groups.each_pair do |key, value|
    puts "Accountability Group #{key} includes: " + value.join(", ")
  end
end

sorted_students_64 = accountability_group_picker(students)

# Reflection
# What was the most interesting and most difficult part of this challenge?
# I really had no idea how many steps I was going to need when I wrote the pseudocode. I think the hardest part and also the most interesting was figuring out how I could account for any size list of names to divide into groups that were no less than three and no more than five.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I don't think I really got it quite right this time, but in general it's improving.

# Was your approach for automating this task a good solution? What could have made it even better?
# My approach was to use an if statement to work through the best scenerios (a number of students that are divisible by 4 or 5), down to the least ideal scenerio. Groups of three with a remainder of one or two that would be tacked on to the last group.

# What data structure did you decide to store the accountability groups in and why?
# I decided to store them in a hash, so I could assign a key for each group and store the names in a array as the value.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I spent a lot of time just getting my initial solution to work. I didn't find a solution that would significantly simplify my initial solution. I did, however, change my initial solution to shuffle the list of names at the beginning of the method, so you get a random result rather than just dividing the original input as it is.