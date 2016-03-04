# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

def welcome(address)
  if address.include?('CA') == true
    return 'Welcome to Califonia'
  else
    return 'You should move to Califonia'
  end
end

puts welcome('123 Highbrow St., San Francisco, CA 99999')
puts welcome('123 Sesame St. New York, NY 11111')