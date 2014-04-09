# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array
# Output: the amount of sides and a randomized die roll
# Steps:
	# 1. create a die class
	# 2. create an initialize method that takes one argument and set a class variable equal to the argument name 
	# 3. raise an ArgumentError if the array is empty
	# 4. create a sides method that returns the amount of sides on the die
	# 5. create a roll method that returns a random value from the array

# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	raise ArgumentError.new("The array cannot be empty.") if labels.empty?
#   end

#     def sides
#   	return @labels.length
#   end

#   def roll
#     return @labels.sample
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("The array cannot be empty.") if labels.empty?
  end

    def sides
  	return @labels.length
  end

  def roll
    return @labels.sample
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

#below are the amount of arguments tests
p Die.instance_method(:initialize).arity == 1 
p Die.instance_method(:sides).arity == 0
p Die.instance_method(:roll).arity == 0

#below are the return arguments
p test_1 = Die.new(["a", "b", "c"]).sides == 3 #=> gives right amount of sides


# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
	#This was easy, the only problems I had were clerical errors.

# What questions did you have while coding? What resources did you find to help you answer them?
	#none

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#This was practically the same as the last exercise. No issues.
	#I want to know how to do more of the driver code, there are things there I don't understand how to do. I'll review other people's code later to see if they did anything differently

# Did you learn any new skills or tricks?
	#Not this time

# How confident are you with each of the learning objectives?
	#I want to be able to create driver code that will let me know 

# Which parts of the challenge did you enjoy?
	#Eh, I didn't really care much for this one

# Which parts of the challenge did you find tedious?
	#None, it was very easy.
