# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: a 16 digit card number
# Output: true or false
# Steps:

# 1. Create a CreditCard class
# 2. define an initialize method with card_number as its argument
# 3. inside the initialize method, set a card_number class variable equal to the card_number argument
# 4. raise ArgumentErrors. One if the card number isn't an integer and another if the card number isn't 16 digits
# 5. define a double method which will double every even index value
# 6. define a sum method which will give us the sum of each digit
# 7. define a check_card method which will check to see if the number is divisible by 10, if it is, return true, false otherwise 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

# class CreditCard
# 	def initialize(card_number)
# 		@card_number = card_number.to_s
# 		raise ArgumentError.new("The card number must be a 16 digit integer value") unless card_number.is_a? Integer
# 		raise ArgumentError.new("There must be 16 digits only") if @card_number.length != 16
# 	end

# 	def double
# 		@integer_number = @card_number.scan(/./).map(&:to_i)
# 		@integer_number.each_index { |index| @integer_number[index] *= 2 if index.even?}.join.scan(/./).map(&:to_i) 
# 	end

# 	def sum
# 		double.to_s.split('').map(&:to_i).inject{|sum, x| sum + x}
# 	end

# 	def check_card
# 		sum % 10 == 0
# 	end
# end


# 4. Refactored Solution

class CreditCard
	def initialize(card_number)
		@card_number = card_number.to_s
		raise ArgumentError.new("The card number must be a 16 digit integer value") unless card_number.is_a? Integer
		raise ArgumentError.new("There must be 16 digits only") if @card_number.length != 16
	end

	def check_card
		@integer_number = @card_number.scan(/./).map(&:to_i)
		to_sum = @integer_number.each_index { |index| @integer_number[index] *= 2 if index.even?}.join.scan(/./).map(&:to_i) 
		sum = to_sum.to_s.split('').map(&:to_i).inject{|sum, x| sum + x}
		sum % 10 == 0
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

p CreditCard.instance_method(:initialize).arity == 1 #=> checks to see that there is only one argument for initialize

p CreditCard.instance_method(:check_card).arity == 0 #=> checks to see that there are no arguments for check_card

p card = CreditCard.new(4408041234567893)
p card.check_card == true #=> checks to see if the 16 digit number is valid (like it should be)

p card = CreditCard.new(4408041234567892)
p card.check_card == false #=> checks to see if the 16 digit is not valid (like it should be)

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# 	I want to know a way to check to see if an argument is raised in non-rspec driver code. If anyone knows how, let me know.
# 	Initially I tried to do everything with arrays, but I ran into several problems. After researching I found the scan method and decided to not worry about summing an array until later.

# What questions did you have while coding? What resources did you find to help you answer them?
	# A lot of questions. But I took a break and figured everything out after I came back.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	# I tried to mix all of the steps together, when i broke them down, everything became much simpler

# Did you learn any new skills or tricks?
	# Some more regexp commands.

# How confident are you with each of the learning objectives?
	# getting there

# Which parts of the challenge did you enjoy?
	# learning new methods and combining everything that I have learned so far

# Which parts of the challenge did you find tedious?
	# I actually got a little stuck on this one. I'm going to have to go back and try it again with different code next time.
