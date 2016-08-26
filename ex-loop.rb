=begin
1. What does the each method in the following program
return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  puts a + 1
end

It supposed to be display a series of numbers adding 1
on each item but since puts method was not place it doesnt output 
anything

=end


=begin
2. Write a while loop that takes input from the 
user, performs an action, and only stops when
the user types "STOP". Each loop can get info from the user.
=end

=begin
msg=""
while msg != "STOP" do
	print "Enter your message: "
	msg = gets.chomp
end

msg=""
until msg == "STOP" do
	print "Enter your message: "
	msg = gets.chomp
end
=end


=begin
3. Use the each_with_index method to 
iterate through an array of your creation 
that prints each index and value of the array.

names=["Sam", "Rodel", "Jonabel", "Ruth", "Al"]
sports=["Volleyball", "Basketball", "Golf", "Tennis", "Bowling"]


def each_with_index(array_name)
	x = 1

	array_name.each do |item|
	puts "#{x}. #{item}"
	x += 1
	end
end

each_with_index(names)
each_with_index(sports)

=end



names=["Sam", "Rodel", "Jonabel", "Ruth", "Al"]

names.each_with_index do |name, index|
	puts "INDEX ##{index} - #{name}"
end

=begin
Side Note: The 'with_index' method takes an optional parameter 
to offset the starting index. 'each_with_index' 
does the same thing, but has no optional starting index.
=end

names.each.with_index(3) do |name, index|
	puts "INDEX ##{index} - #{name}"
end

# 4. Write a method that counts down to zero using recursion.

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)