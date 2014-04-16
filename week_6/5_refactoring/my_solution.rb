# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

# class CreditCard

# def initialize(card)

# @card = card
# if @card.to_s.length !=16
# raise ArgumentError, 'Digits not equal to 16'
# end
# end
# def check_card

#  a = @card.to_s.split("")
# len = (@card.to_s.length)-1

# c = []

# for i in 0..len

# if (i==0 || i%2 == 0)

# n = a[i].to_i*2

# if n.to_s.length > 1
#    n =  n.to_s.split("")
   
#     c <<  n[0].to_i
#     c << n[1].to_i
# else
#     c << n
# end
    
# else 
#     c<< a[i].to_i
# end

# end  
# if  (c.reduce(:+) % 10 == 0)
#     return true
# else
#     return false
# end
# end
# end


# Refactored Solution

class CreditCard

	def initialize(card)
		@card = card
			raise ArgumentError, 'Digits not equal to 16' if @card.to_s.length != 16
		end	

	def split_number
		@card.to_s.split("")
	end

	def double
		double_array = []

		for i in 0..(@card.to_s.length)-1

			if (i==0 || i%2 == 0)
				double_value = split_number[i].to_i*2

				if double_value.to_s.length > 1
   				split_double_value =  double_value.to_s.split("")
    			double_array <<  split_double_value[0].to_i
    			double_array << split_double_value[1].to_i

				else
    			double_array << double_value
				end

			else 
    		double_array<< split_number[i].to_i
			end
		end

		return double_array  
	end

	def check_card
		if  (double.reduce(:+) % 10 == 0)
    	return true
		else
    	return false
		end
	end
end



# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "The Assertion has Failed" unless yield
end

#CreditCard.new(1) #used to check if arg error worked

valid = CreditCard.new(4563960122001999)
assert {valid.check_card == true}

invalid = CreditCard.new(1111111111111111)
assert {invalid.check_card == false}

assert {valid.class == CreditCard}


# Reflection 
# What parts of your strategy worked? What problems did you face?
	#Initially I tried refactoring mine and someone elses solutions, but mine gave to many errors when I tried to split it apart, and I didn't want to rewrite the program, so I grabbed someone else's instead.
	#This code was a little messy in terms of variable names and indentation, but I think I got it to look a lot better and easier to understand.
	#I mainly focused on separating everything so there was a method for every responsibility in the class, that way it will be a lot easier to go back in the future to change the code if additions need to be made

# What questions did you have while coding? What resources did you find to help you answer them?
	#No questions, just had to read through and rework this program carefully

# What concepts are you having trouble with, or did you just figure something out? If so, what?

# Did you learn any new skills or tricks?

# How confident are you with each of the learning objectives?
	#this was great practice, I liked it.

# Which parts of the challenge did you enjoy?
	#I enjoyed refactoring someone elses solution without changing its functionality.

# Which parts of the challenge did you find tedious?
	#I found fixing the style and the indentation a little annoying.