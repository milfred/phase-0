# Research Methods

# I spent [] hours on this challenge.

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

# Method to split a hash two arrays
# Input: A hash that contains a list of dog names and the dog's age
# Output: Two arrays nested inside another array. One will contain all of the pets that are four years old or younger. The other will contain all of the other pets.
# Steps to product the correct outcome:
# 1. Pull all of the pets out of the hash that are four years old or younger and store them in a new array
# 2. Pull all of the other pets out of the hash and store them in a new array
# 3. Store both of the arrays in a new array
# 4. Return the new array


# Person 5
def my_array_splitting_method(source)
  integer_array = source.grep(Integer)
  string_array = source.grep(String)
  new_array = [integer_array, string_array]
  return new_array
end

print my_array_splitting_method(i_want_pets)

def my_hash_splitting_method(source, age)

end

print my_hash_splitting_method(my_family_pets_ages)


# def my_hash_splitting_method(source)
#   young_pets = []
#   old_pets = []
#   source.each do |key, value|
#     if value <= 4
#       young_pets << [key, value]
#     else
#       old_pets << [key, value]
#     end
#   end
#   new_array = [young_pets, old_pets]
#   return new_array
# end

# print my_hash_splitting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
