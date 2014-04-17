# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself].


# 2. Pseudocode
	#Create a Car class
		#create an initialize method that takes in the arguments model and color
		#create a drive method that takes the amount of miles you need to drive
		#create a set speed method that takes an argument of speed with a default value of 0 mph
		#create a turn method that will only take the arguments left or right or it will raise an error
		#create a distance_traveled method that will keep track of the amount of distance traveled (output)
		#create a stop method that will set mph to 0
		#create an output method that will display the last method performed by the pizza delivery car
		#create a pizza_compartment method that stores pizzas
		#create a delivery method that delivers pizzas in a FIFO manner
		#create a Pizza class that takes in the types of pizza with the initialize method

# 3. Initial Solution

class Car
	attr_reader :model, :color

	def initialize(model, color)
		@model = model
		@color = color
		@pizzas = []
		@miles = 0
		@distance = 0
	end

	def reset
		@miles = 0
		@distance = 0
		return "The distance traveled has been reset to 0 miles."
	end

	def drive(miles)
		@miles = miles
		"You will now drive #{@miles} miles."
	end

	def set_speed(mph=0)
		"You are now driving at a speed of #{mph} mph."
	end

	def turn(left_or_right)
		if left_or_right == "right"
			return "You are now turning right."
		elsif left_or_right == "left"
				return "You are now turning left."
		else
			return "Please enter right or left in lower case"
		end
	end

	def distance_traveled
		@distance += @miles
		return "You have traveled #{@distance} miles."
	end

	def pizza_compartment(*add_pizza)
		@pizzas.push(*add_pizza).flatten!
		return "We have #{@pizzas.join(", ")} pizzas in our compartment."
	end

	def deliver_pizza
		delivered_pizza = @pizzas.shift
		return "#{delivered_pizza} pizza has been delivered."
	end
end

class Pizza
	attr_reader :pizza_type
	def initialize(pizza_type)
		@pizza_type = pizza_type
	end
end
# 4. Refactored Solution

#There are a lot of ways to refactor, but that would mainly be with the way my TDD has been running the code
#I feel that for now, the code is as clean and as easy to understand as it can be. 




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "The Assertion Failed!" unless yield
end

beater = Car.new("Chevy Pinto", "Yellow")
pepperoni = Pizza.new("Pepperoni")
bacon_lovers = Pizza.new("Bacon Lovers")
cheese = Pizza.new("Cheese")

assert {cheese.is_a? Pizza}
assert {beater.is_a? Car}
assert {beater.method(:initialize).arity == 2}
assert {p bacon_lovers.pizza_type == "Bacon Lovers"}

p "You are driving a #{beater.color} #{beater.model}."
p "Let's put our pizza inside!"
p beater.pizza_compartment(pepperoni.pizza_type, bacon_lovers.pizza_type, cheese.pizza_type)


p beater.reset #imagine we had a previous trip
p beater.distance_traveled

p beater.set_speed(25)
p beater.drive(0.25)
p beater.distance_traveled
p "You have reached a stop sign."

p beater.set_speed
p beater.turn("right")

p beater.set_speed(35)
p beater.drive(1.5)
p beater.distance_traveled
p "You are now in a school zone. Slow down!"

p beater.set_speed(15)
p beater.drive(0.25)
p "You have reached a stop sign."

p beater.set_speed
p beater.distance_traveled
p beater.turn("left")


p beater.set_speed(35)
p beater.drive(1.4)
p beater.set_speed
p beater.distance_traveled
p "You have reached your destination! Deliver that Pizza!"

p beater.deliver_pizza
p beater.pizza_compartment
p "You've delivered the first pizza, now for the next one."

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
	#Working through the code initially, I started to think of a simpler way to solve the code instead of actually putting in the miles and the distance each time in my driver code.
	#If I wanted to run everything through my TDD, I would take the messages out of my code. I'm not worried about that at this time.
	#I ran into some problems with changing method names from the pseudocode and then not changing them back in my TDD. It took about 10 minutes to figure it out and fix everything, but it's all gravy now. That's a lot faster than usual.
	#I didn't want to spend the amount of time it would take to refactor the code, essentially I wanted to add some methods so I wouldn't have to type out several commands just to get my car to do certain things. I know what I can do to refactor though, I just wanted to make better use of my time.
	#The reset method is NOT necessary, I only put it in there for fun, I feel that eventually I can go back to this program and simplify it and have fun with it in my spare time. But for now I feel that reading the books and other optional readings is more important.

# What questions did you have while coding? What resources did you find to help you answer them?
	#none, this was extremely good practice

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#Everything was good, no troubles. Utilizing attr is great.

# Did you learn any new skills or tricks?
	#This was mainly a large consolidated exercise that included everything we've learned up to this point, so not really.

# How confident are you with each of the learning objectives?
	#feeling great!

# Which parts of the challenge did you enjoy?
	#all of it!

# Which parts of the challenge did you find tedious?
	#I got a little frustrated when I hit a small snag, but other than that, everything went great!