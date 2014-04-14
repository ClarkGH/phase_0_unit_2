# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
  end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		@contents.reject! {|item|
			item}
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware

	attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "cleaning the #{type}"
		@clean = true
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat

removed_knife.clean_silverware 
silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")
fork.clean_silverware

silverware_drawer.add_item(fork)
silverware_drawer.view_contents

silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
silverware_drawer.view_contents

fork.eat

#BONUS SECTION
fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "The Assertion Failed!" unless yield
end

spork = Silverware.new("spork")

assert {spork.is_a? Silverware}
assert {Silverware.is_a? Class}

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
	# I utilized ruby and the -cw switch to see if there were any syntax errors or warnings.
	# I kept running into a warning telling me that my indentations didn't match on line 15, but they do. I just ignored it.
	# I had issues clearing the drawer array initially, but then I discovered the reject module.
	# The fork issue was the easiest, I just created a new fork and cleaned it. Gotta eat with clean forks
	# I hope I didn't miss anything, the program runs completely, but it asking me what pop does is a little disconcerting. Maybe the way I cleaned out the drawer was different?
	# With the test driven code and the assertions, I need to learn how to test for more than just one thing. I want to test for both the output and whether the condition was true or false at the same time, however, I don't know how at this point. I'll figure it out later.

# What questions did you have while coding? What resources did you find to help you answer them?
	# just on how to empty my array, the reject! method solved that.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	# Cleaner code, I need to research and practice more on that.

# Did you learn any new skills or tricks?
	#.reject

# How confident are you with each of the learning objectives?
	#pretty confident. I didn't really research anything

# Which parts of the challenge did you enjoy?
	# It feels great to be able to just go through and understand how to do everything, hit a small wall, and then be able to fix it with my own logic.

# Which parts of the challenge did you find tedious?
	#none
