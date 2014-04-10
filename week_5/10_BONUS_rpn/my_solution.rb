# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: a string with numeric values and mathematical operators put in reverse polish notation separated by spaces
# Output: the answer from the entered equation
# Steps:
	#Create an RPNCalculator class
	#Create an evaluate method which will take the input in the format of reverse polish notation
		#split the input separated by spaces into an array
		#change numbers into integers
		#push each mathematical operator in between numbers
		#calculate

# 3. Initial Solution

# class RPNCalculator
#   def evaluate(rev_pol_not) #=> eval method
#   	split_rpn = rev_pol_not.split(' ')
#   	split_rpn.inject([]) { |array, num| #=> injecting our split array here if they are integer values
#   		if num =~ /\d+/ #=> reg exp searches for all numerical values
#   			array << num.to_i #=> pushes integer values into array
#   		else
#   			last_two_digits = array.pop(2) #=> takes the last two numbers from the array
#   			array << last_two_digits[0].send(num, last_two_digits[1])
#   		end
#   	}.pop
#   end
# end



# 4. Refactored Solution

class RPNCalculator
  def evaluate(rev_pol_not) #=> eval method
  	rev_pol_not.split(' ').inject([]) { |array, num| #=> injecting our split array here if they are integer values
  		if num =~ /\d+/ #=> reg exp searches for all numerical values
  			array << num.to_i #=> pushes integer values into array
  		else
  			last_two_digits = array.pop(2) #=> takes the last two numbers from the array
  			array << last_two_digits[0].send(num, last_two_digits[1])
  		end
  	}.pop
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

p RPNCalculator.instance_method(:evaluate).arity == 1

eval = RPNCalculator.new

p eval.evaluate('0') == 0

p eval.evaluate('-1') == -1

p eval.evaluate('1 1 +') == 2

p eval.evaluate('1 -1 +') == 0

p eval.evaluate('2 2 *') == 4

p eval.evaluate('5 10 -') == -5

p eval.evaluate('1 2 3 4 + + +') == 10

p eval.evaluate('12 + 3 4 + *') == 21

p eval.evaluate('20 10 5 4 + * -') == -70

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
	#This was a tough one, I did tons of research and worked really hard. It was very frustrating for me to get this to work the way I wanted it to.

# What questions did you have while coding? What resources did you find to help you answer them?
	# I got stuck on this one so I did some research and found this link https://schuchert.wikispaces.com/ruby.tutorials.bdd.UsingBddToDevelopAnRpnCalculator

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#Regexp is something I getting acquainted with, and popping and pushing is something I haven't really done before.

# Did you learn any new skills or tricks?
	#first time using pop and .send

# How confident are you with each of the learning objectives?
	#not too confident, this was hard.

# Which parts of the challenge did you enjoy?
	# The research and having my work come out successfully

# Which parts of the challenge did you find tedious?
	# Going back and forth between my failed code.
