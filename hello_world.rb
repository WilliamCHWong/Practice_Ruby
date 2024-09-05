
# puts adds newline after, print adds newline before
print "Hello world"
puts "Hello world"
puts "Hello world"
print "Hello world"
print "Hello world"
puts "Hello world"


# Variables
city_name = "Toronto"
muni_number = "25"
puts ("The Greater " + city_name + " Area is known as the GTA.")
puts ("The region contains " + muni_number + " municipalities.")
city_name = "Ottawa"
puts ("I live in " + city_name + ".")
puts ("I have not visited all " + muni_number + " municipalities.")


# Datatypes
#string
greeting = "Hello, world!"
#integer
age = 25
#float
temperature = 98.6
#boolean
is_active = false
#array
fruits = ["apple", "banana", "cherry"]
#hash
person = {name: "Alice", age: 30}

#Concatenation:
first_name = "John"
last_name = "Doe"
full_name = first_name + " " + last_name
puts full_name

#Interpolation: #{}
name = "Alice"
greeting = "Hello, #{name}!"
puts greeting

#Method:
text = "Hello, Ruby!"
puts text.upcase
puts text.downcase
puts text.length

#Math & Numbers
a = 10
b = 5
puts a + b
puts a - b
puts a * b
puts a / b
puts a ** b # a^b
puts a % b # remainder

#Getting User Input:
print "Enter your name: "
name = gets.chomp # chomp removes newline character
puts "Hello, #{name}"