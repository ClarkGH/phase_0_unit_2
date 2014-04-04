# U2.W4: Title here


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: any number
# Output: a number that has every three digits separated from the rest with commas
# Steps:
=begin

	1. Define a comma_separator method that takes number as it's argument
	2. convert the number to a string or we will be unable to use .chars
	3. put all of the characters in the newly created string into an array
	4. reverse the order of the array so the commas are put in correctly (otherwise they're put in backwards)
	5. each_slice with an argument of 3 so the commas are joined after every 3rd. (this creates arrays of three)
	6. use the .map function with &join as its argument (else we'll get all numbers separated by commas) 
	7. Then join everything together so there are only commas after every 3 digits (if we don't do this we'll have several reverse arrays with 3 digits only separated by commas. This joins the rest of the arrays together and does the actual separating with commas put in as the argument)
	8. re-reverse everything so everything shows up in the right order.
		
=end

# 3. Initial Solution

def separate_comma(number)
	string = number.to_s
	big_array = string.chars.to_a
	reversed = big_array.reverse
	sliced = reversed.each_slice(3)
	joined = sliced.map{ |char| char.upcase }.join(",")
	finished_product = joined.reverse
	return finished_product
end


# 4. Refactored Solution

def separate_comma(number)
	number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

# 1. DRIVER TESTS GO BELOW THIS LINE

#see 3_commas_spec.rb




# 5. Reflection 

=begin
	
What parts of your strategy worked? What problems did you face?
	I tried to initially just add in commas after every 3 digits after converting everything to a string, but that put the commas in the wrong places.
	After a while I realized it was putting my commas in the reverse order. I found online the .reverse method and was able to figure out that I could just have commas put in after every 3 in the reverse order.
	Unfortunately that returned every number backwards, I tried reversing them again, and everything worked out fine.

What questions did you have while coding? What resources did you find to help you answer them?
	I used the official documentation. I just needed to learn more methods to do things.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	None here. This was pretty easy.

Did you learn any new skills or tricks?
	I learned that .chars separates all of the characters of strings.
	I learned that I could use .reverse twice to get everything I want done without having to resort to using the length of the array and then dividing the max characters by 3 to decide the amount of commas I will need
	I hadn't used the map function until now, and I found it useful with regards to getting everything connected in the incepted arrays

How confident are you with each of the learning objectives?
	Pretty confident here

Which parts of the challenge did you enjoy?
	These challenges are like puzzles and I just like them.

Which parts of the challenge did you find tedious?
	None.

=end