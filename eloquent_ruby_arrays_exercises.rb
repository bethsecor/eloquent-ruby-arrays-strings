# Part 1: Taking Advantage of Ruby's Smart Collections

# 1. Using Variable Method Arguments
def print_first_last( *things )
  puts things.first
  puts things.last
end

print_first_last( "raindrops on roses", "whiskers on kittens", "bright copper kettles", "warm woollen mittens")

# 2. Using Map and Join
animals = ["dog", "cat", "goat", "capybara"]
animals_caps = animals.map { |animal| animal.capitalize }
puts animals_caps.join(', ')

# 3. Dangers of ! Methods
# Most of the time it means a method that will change the original object.
# Not all methods that mutate the caller have a ! after them.
# You don't want to use a method that mutates the caller if you are iterating over a collection.
# You might want to use it if you don't intend to use the original object again.

# Part 2: Taking Advantage of Ruby's Smart Strings

# 1. Special Characters in Strings
# To "escape" a character within a string tells ruby that the character is just a character and not code.
puts '\''
puts '\\'
puts "\""
puts "\n"
puts "\t"
puts "Beth \n4'9\""

# 2. Splitting Strings
"Beth \n4'9\"".split("\n")

# 3. Poking at Bytes
"Beth".each_byte { |b| puts b }
beth_bytes = []
"Beth".each_byte { |b|  beth_bytes << b }
puts beth_bytes
# ASCII
