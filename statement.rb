=begin
def add(a, b)
    return a + b
end

def subtract(a, b)
    a - b
end

puts add(3, 5)
puts subtract(100, 5)

# Iterators

# do not modify the original
numbers = [1, 2, 3, 4, 5, 6]
numbers.each do |number|
    puts number * 2
end
puts numbers

# transformation
double_numbers = numbers.map do |number|
    number * 2
end

puts double_numbers

cookies = ["chocolate", "raisin", "cinnamon", "nuts"]
cookies.each{|cookie| puts cookie.include?("c")}

# if statement

def check_age(age)
    if age >= 18
        puts "You are an adult"
    elsif age >= 10
        puts "You are a teenager"
    else
        puts "You are a kid"
    end
end

check_age(20)
check_age(13)
check_age(5)
check_age(-1)

puts "Enter a grade (A, B, C, D, F): "
grade = gets.chomp.upcase
case grade
when "A"
    puts "Brilliant"
when "B"
    puts "Good"
when "C"
    puts "Fine"
when "D"
    puts "Passed"
else
    puts "Fail"
end

# Loop
i = 1
while i <= 5
    puts "Iteration #{i}"
    i += 1
end

secret_number = rand(10) + 1
guess = nil
attempts = 0
max_attempts = 5

puts "Please guess a number"

while guess != secret_number && attempts < max_attempts
    puts "Enter a number between 1 and 10: "
    guess = gets.chomp.to_i
    attempts += 1

    if guess < secret_number
        puts "Too low"
    elsif guess > secret_number
        puts "Too high"
    end
end

if attempts == max_attempts
    puts "Sorry, you have used all attempts"
else
        puts "Congratulation!"
end

for i in 1..5
    puts "Number #{i}"
end

def exponent(base, power)
    result = 1
    power.times do
        result *= base
    end
    result
end

puts exponent(2, 5)
puts exponent(5, 4)

# File operation
file_path = "./sample_text.txt"
file_content = File.read(file_path)
puts file_content

File.open(file_path, "r") do |file|
    counter = 1
    file.each_line do |line|
        puts "Line #{counter} : #{line}"
        counter += 1
    end
end

File.open(file_path, "w") do |file|
    file.puts "Hello world"
    file.puts "Writing the second line."
end

File.open(file_path, "a") do |file|
    file.puts "Writing the last line."
end

# Error
begin
    file_path = "bizzard.txt"
    content = File.read(file_path)
    puts content
rescue Errno::ENOENT => e
    puts "Custom error message: File not found - #{e.message}"
end

begin
    result = 10 / 0
rescue ZeroDivisionError
    puts "Error message : #{e.message}"
rescue NameError
    puts "Undefined"
rescue StandardError => e
    puts "An error occurs : #{e.message}"
end

=end

class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def display
        puts "Name : #{@name}\nAge : #{@age}"
    end
end

person1 = Person.new("Alice", 30)
person1.display


class Car
    def initialize(brand, model)
        @brand = brand
        @model = model
    end

    def start
        puts "#{@brand} - #{@model} starts now."
    end

    def stop
        puts "#{@brand} - #{@model} stops now."
    end
end

car1 = Car.new("Subaru", "Crosstrek")
car1.start
car1.stop

class SUV < Car #Inheritance
    def accelerate
        puts "#{@brand} - #{@model} is getting faster."
    end
end

car2 = SUV.new("Toyota", "Camry")
car2.start
car2.stop
car2.accelerate

module Displacement
    def go_east
        puts "I am going eastbound."
    end
end

class Firefighter < Person
    include Displacement
end

class Truck < Car
    include Displacement
end

person2 = Firefighter.new("Brian", 25)
person2.go_east

car3 = Truck.new("Ford", "Maverick")
car3.go_east