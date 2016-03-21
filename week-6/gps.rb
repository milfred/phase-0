# Your Names
# 1) Jason Milfred

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   # Stores the valid food items and the number of ingredients needed to make each one.
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#   # Sets the error counter to three.
#   error_counter = 3


#   # Sets the error_counter to zero if the item_to_make is in the library, so the argument error will not be raised.
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   # Raises an error if the item_to_make is not in the library.
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   # Sets the serving size equal to the number of ingredients needed to make the argument item_to_make.
#   serving_size = library.values_at(item_to_make)[0]

#   # Finds the remaining number of ingredients.
#   remaining_ingredients = num_of_ingredients % serving_size

#   # If there are no remaining ingredients, return the first option. If there are, return the next.
#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# Refactoring

# It seems like this should be a class rather than a single method
# The error message is overly complicated and can be refactored
# There should be a method to add new foods to the library
# It seems like this method uses number of ingredients and serving size interchangeably. You enter the item and the number of ingredients. The method then sets the number of ingredients value to the serving size. That doesn't really make sense. It would make more sense if you:
  # 1. Entered the just the item you want to make as the initial argument.
  # 2. If the food item you want to make is not on the list, return a message telling the user that it's not available and prompt them to reenter.
  # 3. You would then be shown the ingredients needed to make the item
  # 4. Next you would enter in a value for the number of times you can make the recipe with the ingredients you have available.
  # 5. You would then receive the number of servings you can produce given your available ingredients.
  # 6. Include a method to add new items to the library.
  # 7. If there is time, add feature to suggest new baking items.


# class ServingSizer

#   def initialize(item_to_make, num_of_ingredients)
#     # Stores the valid food items and the number of ingredients needed to make each one.
#     @item_to_make = item_to_make
#     @num_of_ingredients = num_of_ingredients
#     @library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#     if @library.has_key?(@item_to_make) == false
#       raise ArgumentError.new("#{item_to_make} is not a valid input")
#     end
#   end

#   # Sets the serving size equal to the number of ingredients needed to make the argument item_to_make.
#   def serving_size
#     @serving_size = @library.values_at(@item_to_make)[0]
#     return "The serving size for #{@item_to_make} is #{@serving_size}."
#   end

#   # Finds the remaining number of ingredients.
#   def remaining
#     @remaining_ingredients = @num_of_ingredients % @serving_size
#     return "The number of leftover ingredients is #{@remaining_ingredients}."
#   end

#   # If there are no remaining ingredients, return the first option. If there are, return the next.
#   def response
#     case @remaining_ingredients
#     when 0
#       return "Calculations complete: Make #{@num_of_ingredients / @serving_size} of #{@item_to_make}"
#     else
#       return "Calculations complete: Make #{@num_of_ingredients / @serving_size} of #{@item_to_make}, you have #{@remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#     end
#   end

#   def serving_size_calc
#     serving_size
#     remaining
#     response
#   end
# end

# New features

class ServingSizer

  def initialize(item_to_make)
    @item_to_make = item_to_make.downcase
    @library =
      {"cookies" =>
        [{serving: 24},
         {ingredients: "1 cup butter, 1 cup sugar, 2 eggs, 1 tsp. vanilla, 2 cups flour, 1/2 tsp. salt, 1 tsp. baking poder, 1 tsp. baking soda, 2 cups chocolate chips"}],
      "cake" =>
        [{serving: 12},
         {ingredients: "2 cups flour, 4 tsp. baking powder, 1 tsp. salt, 4 eggs, 1 1/2 cups sugar, 1 cup butter, 1 cup milk, 1 tsp. vanilla"}],
      "pie" =>
        [{serving: 7},
         {ingredients: "6 tbsp. butter, 1/4 cup sugar, 1/2 cup brown sugar, 1/4 tsp. cinnamon, 1/4 cup water, 1 cup flour, 4 apples"}]}
  end

  def check_add_item
    until @library.has_key?(@item_to_make) == true
    puts "I\'m sorry, #{@item_to_make} is not in our library. Would you like to add a new item? (y/n)"
    @answer = gets.chomp.downcase
      if @answer == "y"
        puts "Great! What is the name of the new item?"
        @new_item = gets.chomp.downcase
        puts "What ingredients are needed to make #{@new_item}?"
        @new_ingredients = gets.chomp.downcase
        puts "How many servings does this make?"
        @new_servings = gets.chomp.downcase
        @library[@new_item] = [{serving: @new_servings.to_i}, {ingredients: @new_ingredients}]
      elsif @answer == "n"
        puts "Here is a list of available items:"
        puts "  " + @library.keys.join(", ")
        puts "Please choose one of these items."
        @item_to_make = gets.chomp.downcase
      else
        puts "That was not a valid response. Please answer y or n."
        answer = gets.chomp.downcase
      end
    end
  end

  def ingredients
    @item_ingredients = @library[@item_to_make][1][:ingredients]
    puts "Here is what you will need to make #{@item_to_make}:"
    puts @item_ingredients
    puts "Given the ingredients available to you, how many times can you make #{@item_to_make}?"
    @multiplier = gets.chomp.to_i
    until @multiplier > 0
      puts "That\'s not a number I recognize. Please reenter."
      @multiplier = gets.chomp.to_i
    end
  end

  def serving_size
    @serving_size = @library[@item_to_make][0][:serving]
    return "The serving size for #{@item_to_make} is #{@serving_size} servings."
  end

  def number_of_servings
    @number_of_servings = @serving_size * @multiplier
    puts "You can make #{@number_of_servings} serving(s) of #{@item_to_make}!"
  end

  def serving_size_calc
    check_add_item
    ingredients
    serving_size
    number_of_servings
  end
end

find_serving_size = ServingSizer.new("scones")
puts find_serving_size.serving_size_calc

#  Reflection

# What did you learn about making code readable by working on this challenge?
# Writing clean code with proper indentation and spacing can make it much easier to read your code. Taking advantage of the fact that ruby ignores whitespace can be very useful when you are trying to access data stored in nested arrays/hashes. Giving descriptive names to your methods and variables can help as well.

# Did you learn any new methods? What did you learn about them?
# I have not used has_key? before. It checks each key to see if it matches the supplied value. If there is a match, the method will return a value of true.

# What did you learn about accessing data in hashes?
# It's something I still need to work on. In my added features version, I added a more complex nested hash/array system. I had to experiment a little bit just to access values in it.

# What concepts were solidified when working through this challenge?
# I feel like I have a better feel for flow control after this challenge. Also, using nested data structures and refactoring.