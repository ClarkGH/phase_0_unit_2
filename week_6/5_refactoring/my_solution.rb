# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution (Jake Persing's Credit card solution)

class CreditCard
	def initialize(card_number)
		@card_number = card_number.to_s
		raise ArgumentError.new("The card number must be a 16 digit integer value") unless card_number.is_a? Integer
		raise ArgumentError.new("There must be 16 digits only") if @card_number.length != 16
	end

	def double
		@integer_number = @card_number.scan(/./).map(&:to_i)
		@integer_number.each_index { |index| @integer_number[index] *= 2 if index.even?}.join.scan(/./).map(&:to_i) 
	end

	def sum
		double.to_s.split('').map(&:to_i).inject{|sum, x| sum + x}
	end

	def check_card
		sum % 10 == 0
	end
end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE






# Reflection 