# U2.W4: Accountability Group Creator


# I worked on this challenge [with: Andra Lally].

# 2. Pseudocode

# Input: an array of names.
#27 names from our cohort: Adam Dziuk, Adam Ryssdal, Aki Suzuki,
# Allison Wong, Andra Lally, Andrew McDonald, Anup Pradhan, CJ Jameson, Christopher Aubuchon,
# Clark Hinchcliff, Devin A Johnson, Dominick Oddo, Dong Kevin Kang, Eiko Seino,
# Eoin McMillan, Eric Wehrli, Hunter T. Chapman, Jacob Persing, Jon Pabico, Mary Huerster, Parjam Davoody
# Samuel Davis, Sebastian Belmar, Shawn Seibert, William Butler Bushyhead, Yuzu Saijo, Christiane Kammerl

# Output: Return each of the names in groups of 4. If there cannot be even groups of four, return group
# a group with the remainder of students left over.

# Steps:

=begin
1. List all cohort names.	
2. Create a method named group_creator that accepts an array of names (names from socrates)
3. make the method shuffle the names permanently
4. create an empty array
5. fill the empty array with an amount of arrays. The amount of arrays will be [(# of objects in argument / 4).to_floor]
6. Fill each of the arrays (array inception arrays) with objects from the shuffled array with an each do loop
7. Have the each do method fill each of the inner arrays one object at a time through each of the arrays in turn so there is no array smaller than four objects
8. return the shuffled groups with a different group number, spaced 
=end


# 3. Initial Code

=begin 

def group_maker(array)
  unit_1 = []
  unit_2 = []
  unit_3 = [] 
    
  array.shuffle!.each_slice(4) do |names|
    unit_1 << names
  end
  array.shuffle!.each_slice(4) do |names|
    unit_2 << names
  end
  array.shuffle!.each_slice(4) do |names|
    unit_3 << names
  end
  if unit_1 == unit_2 || unit_1 == unit_3 || unit_2 == unit_3 then
   	retry
  else
    mixed_array = puts "Unit 1: #{unit_1}, Unit 2: #{unit_2}, Unit 3: #{unit_3}"
  end
  
end

=end

#Code I built from additional research for further understanding and for cleaner and easier to understand code.

fence_lizards = ["Adam Dziuk", "Adam Ryssdal", "Aki Suzuki", "Allison Wong", "Andra Lally", "Andrew McDonald", "Anup Pradhan", "CJ Jameson", "Christopher Aubuchon", "Clark Hinchcliff", "Devin Johnson", "Dominick Oddo", "Dong Kevin Kang", "Eiko Seino", "Eoin McMillan", "Eric Wehrli", "Hunter Chapman", "Jacob Persing", "Jon Pabico", "Mary (Molly) Huerster", "Parjam Davoody", "Samuel Davis", "Sebastian Belmar", "Shawn Seibert", "William Bushyhead", "Yuzu Saijo", "Christiane Kammerl"]

def group_maker(array)
	array.shuffle!
	returned_array = Array.new
	index_to_fill = 0
	inception_array = array.length / 4

	inception_array.times do
		returned_array << Array.new
	end

	array.each do |person|
		if returned_array.length <= index_to_fill
			index_to_fill = 0
			returned_array[index_to_fill] << person
			index_to_fill += 1
		else
			returned_array[index_to_fill] << person
			index_to_fill += 1
		end
	end
	return returned_array
end

3.times do
	number = 1
	puts "New Unit:"
	puts "........."
	group_maker(fence_lizards).each do |group|
		puts "Group # #{number}:"
		puts group
		puts ""
		number += 1
	end
end
# 4. Refactored Solution

fence_lizards = ["Adam Dziuk", "Adam Ryssdal", "Aki Suzuki", "Allison Wong", "Andra Lally", "Andrew McDonald", "Anup Pradhan", "CJ Jameson", "Christopher Aubuchon", "Clark Hinchcliff", "Devin Johnson", "Dominick Oddo", "Dong Kevin Kang", "Eiko Seino", "Eoin McMillan", "Eric Wehrli", "Hunter Chapman", "Jacob Persing", "Jon Pabico", "Mary (Molly) Huerster", "Parjam Davoody", "Samuel Davis", "Sebastian Belmar", "Shawn Seibert", "William Bushyhead", "Yuzu Saijo", "Christiane Kammerl"]

def group_maker(array)
	array.shuffle!
	returned_array = []
	index_to_fill = 0
	inception_array = array.length / 4

	inception_array.times {returned_array << []}

	array.each {|person|
		if returned_array.length <= index_to_fill
			index_to_fill = 0
			returned_array[index_to_fill] << person
			index_to_fill += 1
		else
			returned_array[index_to_fill] << person
			index_to_fill += 1
		end
	}
	return returned_array
end

3.times {
	number = 1
	puts "New Unit:"
	puts "........."
	group_maker(fence_lizards).each {|group|
		puts "Group # #{number}:"
		puts group
		puts ""
		number += 1
	}
}


# 1. DRIVER TESTS GO BELOW THIS LINE
puts group_maker(fence_lizards).class == Array #=> check to see if cohort is an array
puts group_maker(fence_lizards).flatten.length == 27 #=> check for all 27 students
puts group_maker(fence_lizards).length == 6 #=> check to see if there are six groups
puts group_maker(fence_lizards).at(0) != group_maker(fence_lizards).at(1) && group_maker(fence_lizards).at(1) != group_maker(fence_lizards).at(2) && group_maker(fence_lizards).at(0) != group_maker(fence_lizards).at(2) #=> check to see that units are not equal
# 5. Reflection 

=begin
	
What parts of your strategy worked? What problems did you face?
	Initially, Andra and I tried using the .shuffle method inside of a 3.times do loop.
	Unfortunately it returned 3 of the same output and we couldn't figure out why. So we
	just created 3 separate loop cases instead.
	We also had syntax problems with a lot of our code. I want to figure out how to return [[a]] instead of syntax errors
	After finishing our code, I went and looked at other people's solutions. I did my best not to copy, but struggled with making my own code run when I tried looping my display.
	I had a hard time figuring out how to loop my display code, I decided to give up on numbering the units and just stick with "New unit" instead

What questions did you have while coding? What resources did you find to help you answer them?
	I was confused as to what I'm supposed to find with the test method. I know how to do it, but to find exactly
	what each and every output will be seems like more work than we would want to do. I would rather not put in every
	single output. Of course there's more code to do, but i just made some simple tests and moved on. The learning was good.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	Initially, making tests. Not because I don't know ho, but because I don't know what was wanted until I did further reading.
	How do you get #{number += 1} tow show in .times loops?

Did you learn any new skills or tricks?
	each_slice and how it can split arrays, slice and slice! and how they split strings, then .shuffle.
	Looking at another student's code I learned that to_set returns self if no arguments are given, otherwise it converts the set to another with klass.new(self, *args,&block)
	.at and how it will show that the groups are not equal
	.flatten and how it combines all arrays within arrays, nice for counting.

How confident are you with each of the learning objectives?
	Struggling here, the learning objectives are fine, but I just need to plug along.

Which parts of the challenge did you enjoy?
	Doing research was fun. I finally figured everything out after 5 hours of hard labor.


Which parts of the challenge did you find tedious?
	I felt like I hit a wall on this exercise. When I went to office hours, nobody was there. I was on my own and had to ask and look around for help that I seemingly could not fine.
