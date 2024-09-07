
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