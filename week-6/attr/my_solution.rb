#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: The input will be the value for the instance variable @name in the NameData class.
# Output: The output will be a greeting using the @name instance variable.
# Steps:
# 1. Create an initialize method in the NameData class that includes a name instance method set to my name.
# 2. Create an initialize method in the Greetings class that allows the Greetings class to access the name instance variable from the NameData class.
# 3. Create another method in the Greetings class that will return a greeting that includes the value of the name instance variable from the NameData class.

class NameData
  def my_name
    return "Jason"
  end
end


class Greetings
  def initialize
    @name_data = NameData.new
  end

  def greet
    puts "Hi #{@name_data.my_name}! How are you doing today!"
  end
end

my_greeting = Greetings.new
my_greeting.greet



# Reflection

# PLEASE NOTE: The instructions were very confusing regarding which file goes with which release. The release_1 file has a title of "# Release 0:" and so on. There seem to be more release files than there are releases since release 5 is to be worked on in the my_solution file. I added reflection for each file and the challenge for release 5 in the my_solution file.

# release_1 file
# What are these methods doing?
# - print_info is printing the age name and occupation values with a blank row inbetween, before, and after
# - what_is_age is returning the value of @age
# - change_my_age is changing the value of @age to the supplied argument new_age
# - what_is_name is returning the value of @name
# - change_my_name is changing the value of @name to the supplied argument new_name
# - what_is_occupation is returning the value of @occupation
# - change_my_occupation is changing the value of @occupation to the supplied argument new_occupation

# How are they modifying or returning the value of instance variables?
# All of the "what_is_..." methods are returning the value of the instance variable stated inside the method. The "change_my_..." methods are changing the value of the instance variable via a user-supplied argument.

# release_2 file
# What changed between the last release and this release?
# "attr_reader :age" was added to the class and the method what_is_age was removed. Also the method for calling the value of @age has changed to simply ".age"

# What was replaced?
# The what_is_age method was replaced with the attr_reader method.

# Is this code simpler than the last?
# Yes. Both methods accomplish the same task, but the attr_reader method is shorter and can reduce repetitive code. Also, the method for calling the age value is shorter and more intuitive.

# release_3 file
# What changed between the last release and this release?
# The change_my_age method was removed and "attr_writer :age" was added to the class. Also the method to change the @age is now "instance_of_profile.age = new value"

# What was replaced?
# The change_my_age method was replaced with the attr_writer method.

# Is this code simpler than the last?
# Yes. Again it is shorter, less repetitive, and makes the method call shorter and more intuitive.

# release_4 file
# What changed between the last release and this release?
# Instead of using separate attr_reader and attr_writer methods for the instance variable @age, the code now uses one attr_accessor method for @age.

# What was replaced?
# The attr_accessor method was added to replace the attr_reader and attr_writer methods. They accomplish the same thing.

# Is this code simpler than the last?
# Yes. The accessor method is DRYer than using the separate reader and writer methods.

# Release 6
# What is a reader method?
# A reader method returns the value of an instance variable from outside of the class that contains the instance method.

# What is a writer method?
# A writer method allows you to change the value of a variable from outside the class that contains it.

# What do the attr methods do for you?
# it is a shorthand way of declaring reader and writer methods.

# Should you always use an accessor to cover your bases? Why or why not?
# No. If you want an instance of a variable to only be readable and you use the accessor, it could lead to debugging issues and may compromise the security of your data.

# What is confusing to you about these methods?
# It took me a few tries to get the emiiter/receiver methods correct, but I think have a good basic understanding of this material after this module.