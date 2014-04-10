# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: An answer and then guess integer values
# Output: low if answer is below the value, correct if answer is spot on, and high if answer is above the value, then true or false if asking if it was solved
# Steps:
	# 1. Create a GuessingGame class
	# 2. Create an initialize method that takes the answer as an argument
	# 3. inside the initialize method, set a class answer variable equal to the answer argument and a class variable named solved? set equal to false
	# 4. create a guess method that takes in an argument also named guess
	# 5. if set a class variable named guess equal to the guess argument
	# 6. if class variable guess is equal to class variable answer, return :correct; if it is higher, return :high; if it is lower, return :low
	# 7. create a solved? method that takes no argument
	# 8. inside solved, return the class variable solved which is false until guess = solved, then return true

# 3. Initial Solution

# class GuessingGame
# 	def initialize(answer)
# 		@answer = answer
# 		@solved = false
# 	end

# 	def guess(guess)
# 		@guess = guess
# 		if @guess == @answer
# 			return :correct
# 		elsif @guess >= @answer
# 			return :high
# 		else
# 			return :low
# 		end
# 	end
	
# 	def solved?
# 		return @solved until @guess == @answer
# 		return true
# 	end	
# end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
      @guess = guess
  	if @guess != @answer
  		return guess > @answer ? :high : :low
  	else @guess == @answer
  		return :correct
  	end
  end
  
  def solved?
  	return false until @guess == @answer
  	return true
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10) #=> created for further testing
p GuessingGame.instance_method(:initialize).arity == 1 #=> Contains 1 argument in initialize
p GuessingGame.method_defined?(:guess) #=> shows that the guess method is defined
p GuessingGame.instance_method(:guess).arity == 1 #=> 1 argument in guess
p game.guess(100) == :high #=> gives us the right answer
p game.guess(0) == :low
p game.guess(10) == :correct
p game.solved? == true
game.guess(5)
p game.solved? == false
p GuessingGame.method_defined?(:solved?)
p GuessingGame.instance_method(:solved?).arity == 0

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
		# I understood how to do all of this without any problems.

# What questions did you have while coding? What resources did you find to help you answer them?
		# none, this was all straight forward.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
		# This last one really consolidated my knowledge of driver code. I still struggle a litte with certain parts, but I could translate all 12 if I needed on the spec.

# Did you learn any new skills or tricks?
		# yes, specifically what was done on line 59.

# How confident are you with each of the learning objectives?
		# very confident with classes

# Which parts of the challenge did you enjoy?
		# This was a free playground for me to do what I wanted. There were several ways to go about doing this.

# Which parts of the challenge did you find tedious
		# none

