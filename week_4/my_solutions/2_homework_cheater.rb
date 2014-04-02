# U2.W4: Homework Cheater


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: title, author, date, thesis, character, quality, and pronoun
# Output: I recently read "Title" by "Author" which was written back in "Date". "Thesis" (with pronouns intermixed in thesis). The quality I admire most of "character" is "pronoun" "quality"
# Steps: 

=begin
	1. Define a method called essay_template that takes the arguments title, author, date, thesis, and pronoun
	2. Create a filler statement that takes in the arguments
	3. Define pronouns, put in appropriate he/she, him/her, his/hers with if else statements
	
=end

# 3. Initial Solution

def essay_template(title, author, date, thesis, character, quality, moment, pronoun)
	if pronoun == "male"
		possessive = "his"
		subject = "he"
		object = "him"
	elsif pronoun == "female"
		possessive = "her"
		subject = "she"
		object = "her"
	else
		possessive = "its"
		subject = "it"
		object = "it"
	end
	cap_title = title.split.map(&:capitalize).join(' ')
	last_name = character.split.last
	puts "Recently, for class, we read #{cap_title}. #{cap_title} was written by #{author.split.map(&:capitalize).join(' ')} and published on #{date}. #{thesis.capitalize}. The quality of the main character, #{author.split.map(&:capitalize).join(' ')}, that I found most endearing was #{possessive} quality of #{quality}. #{last_name.capitalize} had shown a good example of #{possessive} #{quality} when #{subject} #{moment}. I appreciated #{object} and #{possessive} #{quality}."
end
# 4. Refactored Solution

def essay_template(title, author, date, thesis, character, quality, moment, pronoun)
	if pronoun == "male"
		possessive = "his"
		subject = "he"
		object = "him"
	elsif pronoun == "female"
		possessive = "her"
		subject = "she"
		object = "her"
	else
		possessive = "its"
		subject = "it"
		object = "it"
	end
	cap_title = title.split.map(&:capitalize).join(' ')
	last_name = character.split.last
	puts "Recently, for class, we read #{cap_title}. #{cap_title} was written by #{author.split.map(&:capitalize).join(' ')} and published on #{date}. #{thesis.capitalize}. The quality of the main character, #{author.split.map(&:capitalize).join(' ')}, that I found most endearing was #{possessive} quality of #{quality}. #{last_name.capitalize} had shown a good example of #{possessive} #{quality} when #{subject} #{moment}. I appreciated #{object} and #{possessive} #{quality}."
end

# 1. DRIVER TESTS GO BELOW THIS LINE
him_essay = "Recently, for class, we read Bacon. Bacon was written by Bacon Jones and published on 1/4/2014. It was a good book. The quality of the main character, Bacon Jones, that I found most endearing was his quality of sandwich eating. Picard had shown a good example of his sandwich eating when he punched a leprechaun and ate his sandwich. I appreciated him and his sandwich eating."
her_essay = "Recently, for class, we read Hamster. Hamster was written by Nora Jean and published on 1,2,3213. I like to eat cheese. The quality of the main character, Nora Jean, that I found most endearing was her quality of werewolf riding. Ann had shown a good example of her werewolf riding when she rode a werewolf into town. I appreciated her and her werewolf riding."
it_essay = "Recently, for class, we read Nothing. Nothing was written by Count Spoon and published on 2/12/4112. It was better than i expected. The quality of the main character, Count Spoon, that I found most endearing was its quality of barking. Dog had shown a good example of its barking when it barked at the mailman. I appreciated it and its barking."

puts her_essay == essay_template("hamster", "nora jean", "1,2,3213", "i like to eat cheese", "lily ann", "werewolf riding", "rode a werewolf into town", "female")
puts
puts him_essay == essay_template("bacon", "bacon jones", "1/4/2014", "It was a good book", "james picard", "sandwich eating", "punched a leprechaun and ate his sandwich", "male")
puts
puts it_essay == essay_template("nothing", "count spoon", "2/12/4112", "it was better than I expected", "iggy dog", "barking", "barked at the mailman", "non-human")



# 5. Reflection 

=begin
	
What parts of your strategy worked? What problems did you face?
	my driver code keeps coming out as false for some reason, even though the answer is exactly the same.
	everything else was easy as all get out

What questions did you have while coding? What resources did you find to help you answer them?
	No questions, I understood this one.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	Driver code. Need to research more.

Did you learn any new skills or tricks?
	how to split with map, capitalize all first letters and then rejoin.

How confident are you with each of the learning objectives?
	pretty confident.

Which parts of the challenge did you enjoy?
	It was fun to make silly stories.

Which parts of the challenge did you find tedious?
	Driver code.
=end




