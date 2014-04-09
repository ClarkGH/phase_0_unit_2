# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: A die class that takes in a die roll method with any given number of sides (must be greater than 1)
# Output: A random number from 1 to the maximum sides of the die (technically a die couldn't have just one side)
# Steps: 
	# 1. Create a Die Class
	# 2. Set a class variable of sides equal to the sides in our initialize method
	# 3. raise an ArgumentError when an amount of sides less than one is put in
	# 4. define a sides method with the class variable of sides
	# 5. define a roll method that will give us a random number between one and the amount of sides

# 3. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if sides < 1
#     	raise ArgumentError.new("There cannot be less than one side on a die.")
#     end
#   end
  
#   def sides
#     @sides
#   end
  
#   def roll
#     rand(@sides) + 1
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("There cannot be less than one side on a die.") if sides < 1
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(@sides) + 1
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

p Die.new(5).sides == 5 #=> Displays whether or not we have the correct amount of sides
p Die.new(17).roll.between?(1,17) #=> Will display whther or not we have the correct range for the roll
p Die.instance_method(:initialize).arity == 1  #=> Shows whether or not our initialize method only takes one argument
p Die.instance_method(:sides).arity == 0 #=> shows that our sides method takes in no arguments
p Die.instance_method(:roll).arity == 0 #=> shows that our roll method takes no argument

# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
#   The 1_die_spec.rb file did not run for me, so I just read it
#   I had issues finding ways to make driver code for the amount of arguments, but research helped me find some new methods.
#   Other than the driver code, the rest of the solution was very easy do to. In reviewing others' code, I see that most of them used rand(1..@sides) which works, but mine works just as well, so I didn't bother to change it.

# What questions did you have while coding? What resources did you find to help you answer them?
#   I had a few questions, but they were all answered with new methods I found in the documentation

# What concepts are you having trouble with, or did you just figure something out? If so, what?
#   Driver code is something that I have to put extra effor in doing, but I'll be okay.

# Did you learn any new skills or tricks?
#   I learned the .instance_method module as well as .arity

# How confident are you with each of the learning objectives?
#   Everything is getting easier as we go on

# Which parts of the challenge did you enjoy?
#   I think all of the challenges are great. I enjoy being pushed.

# Which parts of the challenge did you find tedious?
#   None, aside from there not being extra resources for driver code specific modules and methods.
