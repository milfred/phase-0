# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

def welcome(address)
  if address.include?('CA') == true
    return 'Welcome to California'
  else
    return 'You should move to California'
  end
end

puts welcome('123 Highbrow St., San Francisco, CA 99999')
puts welcome('123 Sesame St. New York, NY 11111')