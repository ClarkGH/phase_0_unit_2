# U2.W6: Testing Assert Statements


# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert #define assert method
  raise "Assertion failed!" unless yield #raise the message unless the yield is equal to the expected value
end
 
name = "bettysue" #the expected value
assert { name == "bettysue" } #our yield is inside the curly braces, this will be not raise our error message
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
	# define assert method
	# raise an error message when our name yield is not returned as true
	# set the value of name equal to bettysue
	# run our yield to check if our name is bettysue, the message should not run
	# run our yield to check if our name is billybob, the message should run


# 3. Copy your selected challenge here
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

# 4. Convert your driver test code from that challenge into Assert Statements

assert {CreditCard.instance_method(:initialize).arity == 1}

assert {CreditCard.instance_method(:check_card).arity == 0}

card = CreditCard.new(4408041234567893)
assert {card.check_card == true}

card = CreditCard.new(4408041234567892)
assert {card.check_card == false}

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
	#This was a very easy challenge. Essentially I just had to read up on yield in the documentation and everything else was cake.

# What questions did you have while coding? What resources did you find to help you answer them?
	#I went back and read the first three chapters of the Well-Grounded Rubyist and found it extremely useful, though unrelated to this exercise.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#I have no trouble with this exercise

# Did you learn any new skills or tricks?
	#yield

# How confident are you with each of the learning objectives?
	#very

# Which parts of the challenge did you enjoy?
	#It was simple, but I still learned something valuable

# Which parts of the challenge did you find tedious?
	#None, this exercise was probably the easiest so far.