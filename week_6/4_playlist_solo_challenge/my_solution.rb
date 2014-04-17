# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
# 	Create a Song class
#  		Create an initialize method that takes two arguments (song and musician)
		# Have the initialize method "save" the songs.
#  	Create a Playlist class
# 		create an initialize method for Playlist that takes 3 arguments (3 different songs)
			#set the arguments equal to a class variable
		#create an add method that adds a song to the array
		#create a remove method that removes a song from the array
		#create a num_of tracks method that shows the number of tracks
		#create a display method that will show all songs in the queue
		#create a play method that plays the chosen song in queue
		#create a play_all method


# Initial Solution

class Song
	attr_reader :title, :artist
	def initialize (title, artist)
		@title = title
		@artist = artist
		"#{title} by #{artist} now saved"
	end
end

class Playlist

	attr_reader :songs_in_queue

	def initialize(*songs_in_queue)
		@songs_in_queue = *songs_in_queue
	end

	def add(*song)
		@songs_in_queue.push(*song).flatten!
	end

	def num_of_tracks
		@songs_in_queue.length
	end

	def remove(song)
		@songs_in_queue.delete(song)
		puts "#{song.title} by #{song.artist} removed."
	end

	def includes?(song)
		@songs_in_queue.include?(song)
	end

	def display
		puts "The songs in the playlist are:"
		songs_in_queue.each do |song|
			puts "#{song.title} by #{song.artist}"
		end
	end

	def play(song)
		if @songs_in_queue.include?(song)
			puts "Now playing #{song.title} by #{song.artist}."
		else
			puts "That song is not in the playlist"
		end
	end

	def play_all
		@songs_in_queue.each do |song_playing|
			puts "Now playing #{song_playing.title} by #{song_playing.artist}."
		end
	end

end

# Refactored Solution

#Everything is organized and built in such a way that there is no need to refactor at this time.




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
my_playlist.play(going_under)
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 

# What parts of your strategy worked? What problems did you face?
	#This problem was more difficult than the other solo challenge. It was a great lesson.
	
# What questions did you have while coding? What resources did you find to help you answer them?
	#Calling other class methods and variable, I figured it out eventually.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#I need more practice, everything else is fine.

# Did you learn any new skills or tricks?
	#More practice on classes

# How confident are you with each of the learning objectives?
	#This confused me, so less than the other solo challenge

# Which parts of the challenge did you enjoy?
	#I sort of feel ugh with this challenge, but I believe it was very beneficial in learning how to call other class methods.

# Which parts of the challenge did you find tedious?
	#This was a little difficult for me. I kept pushing when I should have taken a break.
	#Taking a break did wonders when I revisited it. No more programming marathons!