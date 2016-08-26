=begin
1. Below we have given you an array and a number.
Write a program that checks to see if the number 
appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# ... or...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

=end

=begin

2. What will the following programs return? 
What is value of arr after each?

1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
   [["b",1], ["b",2], ["b",3], ["a",1], ["a",2], ["a",3]]
   [["b"], ["b",2], ["b",3], ["a",1], ["a",2], ["a",3]]
==>1

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)


1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]

=end

=begin
3. How do you print the word "example" from 
the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]
puts arr.last.first

=end

=begin
4. What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5) => 3 - 3rd index - number of index of the value 5

2. arr.index[5] => No method []

3. arr[5] =>8 ->whats inside of 5 index its 8!

=end


=begin
5. What is the value of a, b, and c in the following program?

string = "Welcome to America!".split(//)
puts string[6]
puts string.inspect

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]


a = "e"
b = "A"
c = nil

=end


=begin
6. You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

...and get the following error message:

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

What is the problem and how can it be fixed?

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names.inspect

=> You are attempting to set the value of an item in
 an array using a string as the key. Arrays are indexed 
 with integers, not strings. You would modify the array 
 by doing the following:

=end


=begin
7. Write a program that iterates over an array and builds
a new array that is the result of incrementing each value
in the original array by a value of 2. You should have two
arrays at the end of this program, The original array and
the new array you've created. Print both arrays to the
screen using the p method instead of puts.
=end

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
