=begin
1. Given a hash of family members, with keys as the title 
and an array of names as the values, use Ruby's built-in 
select method to gather only immediate family members' names
into a new array.

=end

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }


immediate_family = family.select do |k,v|
	k == :sisters || k == :brothers
end
arr = immediate_family.values.flatten
p arr


=begin

2. Look at Ruby's merge method. Notice that it has 
two versions. What is the difference between merge 
and merge!? Write a program that uses both and illustrate
the differences.


=end


arr1 = { name: "sam", age: 22, city: "new york"}
arr2 = { names: ["sony", "vegas", "ralph"],
		 age: [22, 24, 26],
		 city: ["california", "sydney", "hawaii"]
}

merge_without_bang = arr1.merge(arr2)
p "MERGE WITHOUT BANG: #{merge_without_bang}" 
p "NO CHANGES FOR arr1: #{arr1}"
p "NO CHANGES FOR arr2: #{arr2}" 

merge_without_bang = arr1.merge!(arr2)
p "MERGE WITH BANG: #{merge_without_bang}" 
p "CHANGES FOR arr1: #{arr1}"
p "CHANGES FOR arr2: #{arr2}" 


=begin
3. Using some of Ruby's built-in Hash methods, 
write a program that loops through a hash and 
prints all of the keys. Then write a program that 
does the same thing except printing the values. 
Finally, write a program that prints both.
=end

h1 = { name: ["Sam", "Nick", "Soy"],
	   age: [20,22,24] }

h1.each do |key, values|
	puts "Here are the keys: #{key}"
end

h1.each do |key, values|
	puts "Here are the values: #{values}"
end

h1.each { |key, value| puts "#{key} : #{value}" }




=begin
4. Given the following expression, how would you 
access the name of the person?

=end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]


=begin

5. What method could you use to find out if a Hash 
contains a specific value in it? Write a program to
demonstrate this use.

=end


def person_has_value(value)
person = { name: "Sam", age: 25, city: "new york" }

if person.has_value?(value)
		puts "The person hash has #{value} on it's values"
else
	puts "The person hash doesn't have  #{value} on it's values "
	end
end

person_has_value("Sam")


=begin

6. Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. 
Anagrams are words that have the same exact letters in them but in 
a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
(etc)

=end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end


=begin
7. Given the following code...

x = "hi there"
my_hash = {x: "some value"} => The key is a symbol
my_hash2 = {x => "some value"} => The key is a string

What's the difference between the two hashes that were created?

=end


=begin
8. If you see this error, what do you 
suspect is the most likely problem?

NoMethodError: undefined method `keys' for Array

A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the 
string keys out of the array, but it doesn't exist.

ANSWER: B

=end
