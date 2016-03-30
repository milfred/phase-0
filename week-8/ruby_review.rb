# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Create a class called PezDispenser to "create" a new Pez Dispenser with a group of flavors. The initialize method should take 1 agrument. An array of up to 12 pez flavors.
# Write a method that will return the number of pez in the dispenser
# Write a method to return the first pez flavor in the array and remove it from the array.
# Write a method to add a pez to the beginning of the array
# Write a method to return all of the flavors in the array



# Initial Solution

# class PezDispenser

#   def initialize(flavors)
#     @flavors = flavors
#     if @flavors.length > 12
#       raise ArgumentError.new("Maximum number of values is 12")
#     end
#   end

#   def pez_count
#     @flavors.length
#   end

#   def get_pez
#     @flavors.slice!(0)
#   end

#   def add_pez(added_flavor)
#     @flavors.unshift(added_flavor)
#   end

#   def see_all_pez
#     @flavors
#   end

# end



# Refactored Solution

class PezDispenser

  # Initialize the class taking one argument for arrat of flavors
  def initialize(flavors)
    @flavors = flavors
    if @flavors.length > 12
      raise ArgumentError.new("Maximum number of values is 12")
    end
  end

  # return the number of pez in the array
  def pez_count
    @flavors.length
  end

  # remove the first element from the flavors array and return it's value
  def get_pez
    @flavors.delete_at(0)
  end

  # prepend the flavor provided in the argument to the flavors array
  def add_pez(added_flavor)
    @flavors.unshift(added_flavor)
  end

  # return a list of all flavors in the flavors array
  def see_all_pez
    @flavors.join(", ")
  end
end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser: "
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
# What concepts did you review or learn in this challenge?
# This helped clarify how a class is used. The last time I created one I added a bunch of puts statements inside the class. In my review, the guide explained to me puts statements should really only be in the driver code and not in the class itself. Haing the driver code already written with these statements helped clarify what I should be doing when creating a class. Also, I think this is the first time I've used the unshift method. I knew what it was, but hadn't used it before. I also discovered delete_at. It does the same thing as slice!, but I think it is more semantic.

# What is still confusing to you about Ruby?
# This particular challenge seemed pretty simple, but there are definitely still aspects I need to work on.

# What are you going to study to get more prepared for Phase 1?
# I plan to do some more ruby challenges this week if I have the time. I'm going to reread some of "The Rubyist" and go through some more tutorials on Treehouse.