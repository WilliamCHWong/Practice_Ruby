
#Building a calculator
print "Enter the first number: "
num1 = gets.chomp.to_f # convert to float for easy computation

print "Enter the operator (+, -, *, /): "
operator = gets.chomp

print "Enter the second number: "
num2 = gets.chomp.to_f

result = case operator # applying case
    when "+"
        num1 + num2
    when "-"
        num1 - num2
    when "*"
        num1 * num2
    when "/"
        if num2 != 0
            num1/num2
        else
            "undefined (division by zero)"
        end
    else
        "Invalid operator"
    end

puts "The result is #{result}"

# Mad Libs Game (String Interpolation)
print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Enter an adverb: "
adverb = gets.chomp

puts "Once upon a time, a #{adjective} #{noun} decided to #{verb} #{adverb}."

# Array practice (CRUD)
fruits = ["apple", "banana", "cherry"] # create
puts "Test for items"
puts fruits[0] # read
puts fruits[1]
fruits[2] = "durian" # update
puts fruits[2]
puts "Test for array update"
fruits.push("grape") # update method 1
fruits << "mango" # update method 2
puts fruits
puts "Test for array delete"
fruits.pop # remove the last element
puts fruits
puts "Test for loop"
counter = 1
fruits.each do |fruit|
    puts "#{counter} : #{fruit}"
    counter += 1
end

# Hashes (key-value pairs)
person = {"name" => "Alice", "age" => 30, "city" => "Toronto"}
puts person["name"] # read
person["age"] += 1 # update
puts person["age"]
person["job"] = "firefighter" # add key-value pair
puts person["job"]
person.each do |key, value|
    puts "#{key}: #{value}"
end

# Methods (reusable blocks of code)

def greet (name)
    puts "Hello, #{name}!"
end

greet("Brian")

def add(a, b)
    return a + b
end

result = add(5, 7)
puts "The result is #{result}"

def introduce(name = "Guest") # default value
    puts "Welcome, #{name}!"
end

introduce
introduce("Charlie")