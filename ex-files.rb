# Create a File

myfile = File.new('mytext.txt', 'w+')
myfile.close

# Opening a File

File.open("simple_file.txt", "w") { |file| file.write("adding first line of text") }

# Reading a File

File.read("simple_file.txt")

File.open("simple_file.txt",  "w+")
sample.puts("another example of writing to a file.")
sample.close

File.delete("dummy_file.txt")




# Regex

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")


def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end


# passing_block

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end



def take_block(number, &block)
  block.call(number)
end

number = 42   

take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

# Procs are blocks that are wrapped in a proc object

talk = Proc.new do
  puts "I am talking."
end

talk.call

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"


# exceptions

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end