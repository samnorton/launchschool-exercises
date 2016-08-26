=begin

1. Use the each method of Array to iterate over 
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each {|item| puts item }

arr.each do |item|
	 puts item
end



=begin
2. Same as above, but only print out values greater than 5.

=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |item| puts item if item > 5 }

arr.each do |item| 
	if item > 5
		puts item
	end
end


=begin
3. Now, using the same array from #2, use the select 
method to extract all odd numbers into a new array.

=end


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = []

arr.select { |item| puts item if item.odd? }

arr.select do |item|
	if item.odd?
		new_array << item
	end
end

p new_array
p arr


=begin

4. Append "11" to the end of the 
original array. Prepend "0" to the beginning.

=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p arr.push(11)
p arr.unshift(0)

p arr



=begin

5. Get rid of "11". And append a "3".

=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# add 11 and 0

p arr.push(11)
p arr.unshift(0)
p arr

# delete 11 and append 3
p arr.delete(11)
p arr << 3
p arr



=begin

6. Get rid of duplicates without specifically 
removing any one value.

=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# add 11 and 0

p arr.push(11)
p arr.unshift(0)
p arr

# delete 11 and append 3
p arr.pop
p arr << 3
p arr

# unique numbers only

p arr.uniq
p arr


=begin

7. What's the major difference between an Array and a Hash?

An array is a storage of data that used index to access each data
A hash used a key and a value to access it's data

=end


=begin
8. Create a Hash using both Ruby syntax styles.

=end

person = { names: ['andrei', 'al', 'vincent'],
		   age: [17, 17, 20]	
}


person2 = { :names => ['sam', 'sammy', 'warren'],
		   :age => [18, 18, 22]	
}


p person
p person2


=begin

9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

1. Get the value of key `:b`.
2. Add to this hash the key:value pair `{e:5}`
3. Remove all key:value pairs whose value is less than 3.5

=end

h = {a:1, b:2, c:3, d:4}

p h[:b]

h[:e] = 5

# return values < 3.5
h.each do |key, value|
	if value < 3.5
		puts "#{key} : #{value}"
	end
end

# delete values < 3.5
 h.delete_if { |key, val| val < 3.5 }




=begin
10. Can hash values be arrays? 
Can you have an array of hashes? (give examples)

=end

# hash values arrays
person = { names: ['sam', 'sammy', 'tikboy'],
		   age: [22, 22, 34] 	
}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]




=begin

11. Look at several Rails/Ruby online API 
sources and say which one you like best and why.

=end


=begin

12. Given the following data structures. 
Write a program that moves the information 
from the array into the empty hash that applies 
to the correct person.

=end


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]



=begin

13. Using the hash you created from the previous exercise, 
demonstrate how you would access Joe's email and Sally's 
phone number?

=end


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]



=begin
14. In exercise 12, we manually set the contacts hash values 
one by one. Now, programmatically loop or iterate over 
the contacts hash from exercise 12, and populate the 
associated data from the contact_data array. Hint: you
 will probably need to iterate over ([:email, :address, :phone]), 
 and some helpful methods might be the Array shift and first methods.


=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }
fields = [:email, :address, :phone]

contact_data.each do |item|
	contacts["Joe Smith"][:email] = contact_data[0][0]
	contacts["Joe Smith"][:address] = contact_data[0][1]
	contacts["Joe Smith"][:phone] = contact_data[0][2]
	contacts["Sally Johnson"][:email] = contact_data[1][0]
	contacts["Sally Johnson"][:address] = contact_data[1][1]
	contacts["Sally Johnson"][:phone] = contact_data[1][2]
end


contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts


=begin
15. Use Ruby's Array method delete_if and String method start_with? 
to delete all of the words that begin with an "s" in the following array.


Then recreate the arr and get rid of all of the words that start 
with "s" or starts with "w".


=end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{ |item| item.start_with?('s') }
p arr
arr.delete_if{ |item| item.start_with?('s', 'w')}
p arr


=begin
16. Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

and turn it into a new array that consists of strings 
containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
Look into using Array's map and flatten methods, as well as String's split 
method.

=end

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']


b = []

a.map do |item|
	b << item.split
end
b = b.flatten
p b


=begin
17. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

These hashes are the same!

=end
