=begin

print "Put in a number: "
begin
	a = gets.chomp
	a = Integer(a)
rescue
	print "Enter an Integer Number: "
	retry
end


if a == 3
  puts "OUTPUT: a is 3"
elsif a == 4
  puts "OUTPUT: a is 4"
else
  puts "OUTPUT: a is neither 3, nor 4"
end
=end


=begin
1. Write down whether the following expressions return
true or false. Then type the expressions into irb to 
see the results.

(32 * 4) >= 129 => false
false != !true => false
true == 4 => false
false == (847 == '874') ==> true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false => true
=end


=begin
2. Write a method that takes a string as argument.
The method should return the all-caps version of 
the string, only if the string is longer than 10 
characters. Example: change "hello world" to "HELLO
WORLD". (Hint: Ruby's String class has a few 
methods that would be helpful. Check the Ruby Docs!)
=end

def takes(word)
	if word.length > 10
	 	word.upcase
	else
		word
	end
end

puts takes("Hello Miukeeeee")
puts takes("Hi there")

=begin
3. Write a program that takes a number from the user between
0 and 100 and reports back whether the number is between 0
and 50, 51 and 100, or above 100.

=end

print "Put a number between 0 to 100: "

begin
numb = gets.chomp
numb = Integer(numb)
rescue 
	print "Please put a number not a text: "
	retry
end

if numb < 0
  puts "You can't enter a negative number!"
elsif numb <= 50
  puts "#{numb} is between 0 and 50"
elsif numb <= 100
  puts "#{numb} is between 51 and 100"
else
  puts "#{numb} is above 100"
end



=begin
4. What will each block of code below print to the 
screen? Write your answer on a piece of paper or 
in a text editor and then run each block of code to 
see if you were correct.

1. '4' == 4 ? puts("TRUE") : puts("FALSE") => FALSE

2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end

==>Did you get it right?"


3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end

==> Alright now!
=end

=begin

5. Rewrite your program from exercise 3 using a case
statement. Wrap the statement from exercise 3 in a 
method and wrap this new case statement in a method. 
Make sure they both still work.

=end


def calc_num(numb)
	if numb < 0
	  puts "You can't enter a negative number!"
	elsif numb <= 50
	 puts "#{numb} is between 0 and 50"
	elsif numb <= 100
	  puts "#{numb} is between 51 and 100"
	else
	  puts "#{numb} is above 100"
	end
end

def calc_num1(numb)
	case
	when numb < 0
	  puts "You can't enter a negative number!"
	when numb <= 50
	 puts "#{numb} is between 0 and 50"
	when numb <= 100
	  puts "#{numb} is between 51 and 100"
	else
	  puts "#{numb} is above 100"
	end
end

def calc_num2(numb)
  case numb
  when 0..50
    puts "#{numb} is between 0 and 50"
  when 51..100
    puts "#{numb} is between 51 and 100"
  else
    if num < 0
      puts "You can't enter a negative num!"
    else
      puts "#{numb} is above 100"
    end
  end
end

print "Put a number between 0 to 100: "
numb = gets.chomp.to_i

calc_num(75)
calc_num1(2)
calc_num2(112)


=begin
6. When you run the following code...

    def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
    end

    equal_to_four(5)

You get the following error message..

test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

ANSWER: Fix it because the method doesn't have an "end" on it

=end

 def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
    end
end

equal_to_four(5)