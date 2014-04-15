# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode
	# create boggleboard class
		#define initialize method that takes a grid as an arg and set class var grid equal to grid arg
		#define a create_word method that takes optional coordinates and joins the values of the coordinates together
		#define a get_row method that takes in the row coordinates and returns the whole row.
		#define a get_column method that will take the column coordinates and will return the column
		#define a get_diagonal method that will take a row range and return the diagonal values in that range

# 3. Initial Solution
class BoggleBoard

	def initialize(grid)
		@grid = grid
	end

	def create_word(*coords)
	  coords.map { |coord| @grid[coord.first][coord.last]}.join("")
	end

	def get_row(row)
	    return @grid[row]
	end

	def get_col(column)
	   @grid.map {|row| row[column]}
	end  

	def get_diagonal(diagonal_range)
		diagonal_range.collect{|diag_val|@grid[diag_val][diag_val]} #@grid[i][i] allows us to get the i'th value of i in the 2d array, giving us the diagonal value
	end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid) #Holds dice_grid as an argument fed into the initialize method

# 4. Refactored Solution

#the above code is fine for what we need and is easy to change in the future, it doesn't need to be refactored.
#I could shorten it, but that could cause future problems if there are necessary changes or additions in the future.




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "The Assertion has Failed!" unless yield
end

# create driver test code to retrieve a value at a coordinate here:

assert {boggle_board.create_word([2,1]) == "c"}

# implement tests for each of the methods here:

assert {boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code"} # will return the word code
assert {boggle_board.get_col(1) == ["r", "o", "c", "a"]} # will return this row
assert {boggle_board.get_row(2) == ["e", "c", "l", "r"]} # will return this column
assert {boggle_board.get_diagonal(0..3) == ["b", "o", "l", "e"]}

# 5. Reflection 

#I much prefer OOP as opposed to Procedural programming. I don't think We've been really focusing on Procedural programming with all the abilities we have with our objects
#OOP is much more organized and is easier to understand the flow of logic and make changes in my opinion. It's not just about making the smallest code you can to get the job done, but to also write code in an easy to follow and change fashion
#I wrote about the difference in my blog: http://glubnerdglub.blogspot.com/2014/04/object-oriented-programming.html

#anyhow, everything in OOP is easier to make changes in the long run, and it is better to make code that you can consistently update. One responsibility per class and method.

# What parts of your strategy worked? What problems did you face?
	# This was heavily related to the first two chapters of POODR. So everything I did here was related to it and very easy to add my methods into the class.


# What questions did you have while coding? What resources did you find to help you answer them?
	#Finding the diagonal value, I looked it up on stack overflow. Figured out how it could work, and then wrote my own.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#collect was learned- creating a new array with the results was helpful - http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-collect

# Did you learn any new skills or tricks?
	#relearned collect.

# How confident are you with each of the learning objectives?
	#I'm actually getting pretty confident with Ruby. I still get stuck, but I feel like I've learned a lot.

# Which parts of the challenge did you enjoy?
	# all of them, I didn't hit any walls and I've progressed

# Which parts of the challenge did you find tedious?
	#none