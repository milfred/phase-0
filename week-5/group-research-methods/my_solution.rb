# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Method to split an array into two arrays
# Input: An array that may contain both strings and integers
# Output: Two arrays nested inside another array. One will contain all of the integers from the original array. The other will contain all of the other values.
# Steps to product the correct outcome:
# 1. Pull all of the integers out of the array and store them in a new array
# 2. Pull all of the other values out of the array and store them in a new array
# 3. Store the two new arrays nested inside a new array
# 4. Return the new array

# Method to split a hash into two arrays
# Input: A hash that contains a list of dog names and the dog's age
# Output: Two arrays nested inside another array. One will contain all of the pets that are four years old or younger. The other will contain all of the other pets.
# Steps to product the correct outcome:
# 1. Pull all of the pets out of the hash that are four years old or younger and store them in a new array
# 2. Pull all of the other pets out of the hash and store them in a new array
# 3. Store both of the arrays in a new array
# 4. Return the new array


# Person 5
def my_array_splitting_method(source)
  integer_sorted_array = source.partition { |obj| obj.is_a? Integer }
end

print my_array_splitting_method(i_want_pets)

def my_hash_splitting_method(source, age = 4)
  age_sorted_pet_array = source.partition { |key, value| value <= age }
end

print my_hash_splitting_method(my_family_pets_ages)


# Identify and describe the Ruby method(s) you implemented.
# Partition returns two arrays inside of another array. The first one will contain the values that evaluate to true given the specified by the block. The secon will contain everything else. I played around with grep, but it wasn't as efficient as partition and, while it passed rspec, my method using grep was only splitting out integers and strings rather than integers and everything else.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# As I described above, the partition enumberable splits a collection into two arrays  based on a block of code that evaluates to true or false. Anything in the collection that returns a true value will be split into one array. Everthing else will go in the other array.
# The syntax looks like this:
# collection = [87, 55, 12, 8, 105.5]
# collection.partition { |obj| obj >= 55 }
# => [[87, 55, 105.5], [12, 8]]



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# When we started with Ruby last week, I looked at the docs and my first thought was "a Google search must be easier." But I've found that to be untrue. There are so many pages out there that are kind of close to what you want, but don't work for the problem you're trying to solve. It worked so much better for me to follow the advice from the "Ruby Docs for Newbs" article and check the docs, try them in irb, and then try them in my code.
