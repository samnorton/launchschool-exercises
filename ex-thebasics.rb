# Exercises on The Basics

=begin
1. Add two strings together that, when concatenated, 
return your first and last name as your full 
name in one string.
=end


"Samuel " + "Norton"



=begin
2. Use the modulo operator, division, or a combination of both to take a 
4 digit number and find the digit in the:
1) thousands place
2) hundreds place
3) tens place
4) ones place
=end


thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 %100 % 10



=begin
3. Write a program that uses a hash to store a list of 
movie titles with the year they came out. Then use the puts 
command to make your program print out the year of each movie to 
the screen. 
=end

 
movies = { :movie1 => "1975", 
:movie2 => "2004", 
:movie3 => "2013", 
:movie4 => "2001", 
:movie5 => "1981" }

puts movies[:movie1]
puts movies[:movie2]
puts movies[:movie3]
puts movies[:movie4]
puts movies[:movie5]



=begin
4. Use the dates from the previous example and store 
them in an array. Then make your program output the 
same thing as exercise 3. 
=end

dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

=begin
5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
=end

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

=begin
6. Write a program that calculates the squares of 3 
float numbers of your choosing and outputs the result to the screen.
=end

puts 4.30 * 4.30
puts 6.13 * 6.13
puts 124.34 * 124.34

=begin
6. What does the following error message tell you?

 SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
    from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

There is supposed to be a } in the program

=end

