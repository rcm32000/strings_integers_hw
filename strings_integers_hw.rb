#Just Strings
#1. First & Last
f = "First"
l = "Last"
  #Use only the "string concatenation" technique to complete the following:
  #1. What code can you write to output the string "FirstLast"?
puts f + l

  #2. What code can you write to output the string "LastFirst"?
puts l + f

  #3. What code can you write to output the string "First Last"?
puts f + " " + l

  #4. What code can you write to output the string "Last First Last First"?
puts l + " " + f + " " + l + " " + f

  #Then repeat 1-4 using only the "string interpolation" technique.
  #1. What code can you write to output the string "FirstLast"?
puts "#{f}#{l}"

  #2. What code can you write to output the string "LastFirst"?
puts "#{l}#{f}"

  #3. What code can you write to output the string "First Last"?
puts "#{f} #{l}"

  #4. What code can you write to output the string "Last First Last First"?
puts "#{l} #{f} #{l} #{f}"

#2. Names
name_1 = "Megan Smith"
name_2 = "Todd Park"
  #1. Can you come up with two ways to output just the fragment "Megan" from name_1?
puts name_1(0..4)
puts name_1(0..-6)
  #2. Would either of your techniques from A would work to output "Todd" from name_2? Why or why not?
  #Neither would work due to the differnece in length of the names

  #3. Write code that can output the initials of name_2.
  puts name_2(0,5)

#Just Integers
#Start with these numbers:
a = 12
b = 65
c = 31
d = 98
#1. Write code to find the average of these four numbers.
sum = a+b+c+d
avg = sum / 4
#2. Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why?
#Yes, answer is 51.5. Code gave only the whole integer.
#3. Say you have the operation a + b * c / d.
#a. What result do you get out from Ruby?
#32
#b. What other outputs can you get out by adding one or more pairs of parentheses to the equation?
#(a + b) * c / d = 24
#(a + b * c) / d = 20
#a + (b * c) / d = 32
#a + (b * c / d) = 32
#a + b * (c / d) = 12
#(a + b) * (c / d) = 0

#People
#Say we have these people:
a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"
#Write code to output both the total characters in all the names together and the average length of the names.
total = a.length + b.length + c.length + d.length
avg = total / 4

#Happy Birthday
#In our family we like to say "Happy" once for every year of your age when we say "Happy birthday!". So when you turn four we'd say "Happy happy happy happy birthday!" Note the capitalization.
#Say you have an age variable that holds the person's age. Write code to output the appropriate greeting.
age = (age of person)
puts "Happy #{"happy " * age}birthday!"

#String Compression
#There's a silly compression algorithm that outputs the first letter, the number of letters in the middle, and the last letter. So for the string "Kalamazoo" it'd output "K7o" or "Denver" would be "D4r". Can you write code to implement that?
word = "Denver"
ord = word[1..-2]
word[0]+ord.length.to_s+word[-1]
