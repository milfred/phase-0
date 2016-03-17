# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

# p array[1][1][3][0]
# p array[1][1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# p hash[:outer][:inner][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.each do |num|
#   if num.kind_of?(Array)
#     num + 5
#   else
#     num + 5
#   end
# end

# number_array.each do |num|
#   if num.kind_of?(Integer)
#     num + 5
#   elsif num.kind_of?(Array)
#     num.each do |inner|
#       inner + 5
#     end
#   end
# end

# number_array.each do |num|
#   if num.kind_of?(Array)
#     num.each {|inner| p inner + 5}
#   else
#     p num + 5
#   end
# end

number_array.map! do |num|
  if num.kind_of?(Array)
    num.map! {|inner| inner + 5}
  else
    num + 5
  end
end

print number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# startup_names.map! do |name|
#   if name.kind_of?(Array)
#     name.map! {|inner| inner.to_s + "ly"}
#   else
#     name + "ly"
#   end
# end

# startup_names.map! do |element|
#   if element.is_a?(String)
#     element + "ly"
#   elsif element.is_a?(Array)
#     element.map! do |second|
#     if second.is_a?(Array)
#       second.map! do |third|
#         third + "ly"
#       end
#     else
#       second + "ly"
#     end
#     end
#   end
# end

startup_names.map! do |element|
  if element.is_a?(String)
    element + "ly"
  elsif element.is_a?(Array)
    element.map! do |second|
    if second.is_a?(Array)
      second.map! do |third|
        third + "ly"
      end
    else
      second + "ly"
    end
    end
  end
end

print startup_names



#Reflect

# What are some general rules you can apply to nested arrays?
# You can access values in nested arrays by stacking indexes after the variable name (e.g. variable[0][1][6]).

# What are some ways you can iterate over nested arrays?


# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
