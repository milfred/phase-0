# Math Methods

# I worked on this challenge by myself.


# Your Solution Below

def add(num_1, num_2)
 return num_1 + num_2
end

def subtract(num_1, num_2)
 return num_1 - num_2
end

def multiply(num_1, num_2)
 return num_1 * num_2
end

def divide(num_1, num_2)
 return num_1.to_f / num_2.to_f
end

puts add(10,2)      # => 12
puts subtract(10,2) # => 8
puts multiply(10.0,2) # => 20
puts divide(10,2)   # => 5.0 (*not* 5)