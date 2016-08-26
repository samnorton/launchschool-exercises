=begin

1 .Write a program that prints a greeting message. 
This program should contain a method called greeting 
that takes a name as its parameter and returns a string.

=end

def greeting(name)
  "Hello, " + name + ". How are you doing?"
end

puts greeting("Sam")

=begin
2. What do the following expressions evaluate to?

1. x = 2 => assign 2 to the var x
2. puts x = 2 => outputs the value of x
3. p name = "Joe" => outputs the value of name
4. four = "four" => assign the string "four" to the var four
5. print something = "nothing" => outputs the value of something 

x = 2
puts x = 2
p name = "Joe"
four = "four"
print something = "nothing"


=end


=begin

3. Write a program that includes a method called multiply 
that takes two arguments and returns the product 
of the two numbers.

=end

def multiply(num1, num2)
	num1*num2
end

puts multiply(2,3)




=begin
4. What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

It will not print anything to the screen. After the return it will ignore
everything below it. 

=end

=begin
#5
1. Edit the method in exercise #4 so that it does print words on the screen. 
2) What does it return now?

I remove the return and it works. 


=end

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")



=begin
6. What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

==>Incomplete passing of arguments on a method calculate_product.
It might be asking for 2 numbers and then you are only parsing one 1 number only.
=end
