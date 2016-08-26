=begin
1. Write a program called name.rb that asks 
the user to type in their name and then prints
out a greeting message with their name included.
=end


print "Enter Your Name: "
name = gets.chomp
puts "Hello #{name}, welcome to Launch School!"



=begin
2. Write a program called age.rb that asks a user 
how old they are and then tells them how old they 
will be in 10, 20, 30 and 40 years. Below is the 
output for someone 20 years old.

# output of age.rb for someone 20 yrs old

How old are you?
In 10 years you will be:
30
In 20 years you will be:
40
In 30 years you will be:
50
In 40 years you will be:
60

=end



print "How old are you? "
age = gets.chomp.to_i
puts "In 10 years you will be #{age+10}" 
puts "In 20 years you will be #{age+20}" 
puts "In 30 years you will be #{age+30}" 
puts "In 40 years you will be #{age+40}" 



=begin

3. Add another section onto name.rb that prints 
the name of the user 10 times. You must do this
without explicitly writing the puts method 10 times 
in a row. Hint: you can use the times method to do 
something repeatedly.

=end



print "Enter Your Name: "
name = gets.chomp

10.times do 
	puts name
end




=begin

4. Modify name.rb again so that it first asks the user 
for their first name, saves it into a variable, and then 
does the same for the last name. Then outputs their 
full name all at once.

=end



print "Enter Your First Name: "
fname = gets.chomp
print "Enter Your Last Name: "
lname = gets.chomp

puts "Hello #{fname} #{lname}, welcome to Launch School!"



=begin

5. Look at the following programs...


and...

y = 0
3.times do
  y += 1
  x = y
end
puts x

What does x print to the screen in
each case? Do they both give errors? 
Are the errors different? Why?

ANSWER:
Prog #1 
3

==>It doesn't print 1,2,3 since the puts method is outside the ruby 
block 3.times do..therefore it will only display the last incremented 
value which is 3.

Prog #2
==> There is an error since the 'x' variable was not defined
outside the scope just like y did. It was just created inside the scope

The first prints 3 to the screen. The second throws 
an error undefined local variable or method because
x is not available as it is created within the scope
of the do/end block.

=end



=begin

6. What does the following error message tell you?

NameError: undefined local variable or method `shoes' for main:Object
from (irb):3
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

The program is trying to reference a variable or method named 
shoes that has not been defined in the program, or is outside
 of the scope in which it is being called.

=end