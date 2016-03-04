
# Full name greeting mini-challenge

puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
puts 'Hello #{first_name} #{middle_name} #{last_name}!'

# Bigger, better, favorite number mini-challenge

puts 'What\'s your favorite number?'
favorite_num = gets.chomp.to_i + 1
puts 'That\'s nice, but don\'t you think #{favorite_num} would be better? It is bigger you know.'