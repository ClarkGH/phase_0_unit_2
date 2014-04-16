# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
	#Create a Pez Dispenser class
	#Create an initialize method that accepts Pez flavors(input) as the argument.
	#Create a Pez Count method that counts the remaining pez and their flavors (output)
	#Create a show Pez method that shows the order and colors of the pez (output only)
	#Create an add Pez method that adds a Pez (input) to the top of the dispenser (as a stack)
		#Raise an argument if there are already 12 pez in the dispenser (12 is the max amount)
		#Have the add Pez method give output that pez has been added.
	#Create a take Pez method that reduces the pez by one every time it's used (show output of what has been removed)
		#Make it act in a LIFO way (pez dispensers are stacks)
	
# 3. Initial Solution

# class PezDispenser
 
#  	def initialize(*pez_flavors)
#  		@pez_flavors = *pez_flavors.shuffle
#  		puts "You now have a Pez dispenser filled with delicious candies."
#  	end
 
#  	def pez_count
#  		@pez_flavors.flatten.length #flatten is necessary if an array is put in as an argument. My code can take both arrays and strings thanks to the optional argument
#  	end

#  	def see_all_pez
#  		puts "You have #{@pez_flavors.join(", ")}, in that order, in your Pez dispenser."
#  	end

#  	def add_pez(pez_to_add)
#  		raise ArgumentError.new("This pez dispenser is already full!") if pez_count == 12
#  		@pez_flavors << pez_to_add
#  		puts "#{pez_to_add.capitalize} has been added to the dispenser."
#  	end

#  	def get_pez
#  		pez_got = @pez_flavors.pop
#  		puts "You got a #{pez_got} pez. Yum!"
#  	end

# end
 


# 4. Refactored Solution

class PezDispenser
 
 	def initialize(*pez_flavors)
 		@pez_flavors = *pez_flavors.shuffle
 		puts "You now have a Pez dispenser filled with delicious candies."
 	end
 
 	def pez_count
 		@pez_flavors.flatten.length #flatten is necessary if an array is put in as an argument. My code can take both arrays and strings thanks to the optional argument
 	end

 	def see_all_pez
 		puts "You have #{@pez_flavors.join(", ")}, in that order, in your Pez dispenser."
 	end

 	def add_pez(pez_to_add)
 		raise ArgumentError.new("This pez dispenser is already full!") if pez_count == 12
 		@pez_flavors << pez_to_add
 		puts "#{pez_to_add.capitalize} has been added to the dispenser."
 	end

 	def get_pez
 		pez_got = @pez_flavors.pop
 		puts "You got a #{pez_got} pez. Yum!"
 	end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry)
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you? Take one!"
super_mario.get_pez
puts "Now you have #{super_mario.pez_count} pez!"

def assert
	raise "The Assertion has Failed" unless yield
end

assert {super_mario.is_a? PezDispenser}
assert {PezDispenser.is_a? Class}
assert {Class.is_a? Module} #Read about modules, just fiddling around to confirm some things
assert {PezDispenser.method(:initialize).arity == -1}
assert {"You have #{super_mario.pez_count} pez!"  == "You have 9 pez!"}


# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# 	Initially I wanted to do some more with this program, but I decided to avoid making things more complex than I had to. I wanted to count all of the color types, but didn't want to bother adding in the hash code
# 	I did add in the maximum amount of 12 pez though.
# 	I didn't feel that the narration belonged outside of the class, so I just moved it onto the inside, which may not have been the best plan, so I eventually left the rest alone and stopped playing God with my code. It would have made creating the driver code easier if I hadn't done things that way.
# 	I still have a pretty good grasp on driver code though, so I don't think it really matters. Easy project, and fun!
# 	If we wanted to actually save purple for later, we could create a "save_for_later" method that uses shift, and shifts the flavor onto the front of the array, that was purple would be popped out last.

# What questions did you have while coding? What resources did you find to help you answer them?
	#I didn't really have any, this was fun.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	# none at this time

# Did you learn any new skills or tricks?
	# Not this time

# How confident are you with each of the learning objectives?
	#I'm very comfortable with this

# Which parts of the challenge did you enjoy?
	# I felt like I was playing on a playground and knew what to do.

# Which parts of the challenge did you find tedious?
	# I sort of wish I knew how to do rspec at this point, in code driver tests are obnoxious when I'm trying to test things that are in-class