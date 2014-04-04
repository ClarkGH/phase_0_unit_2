# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

# original code
def translate_to_cipher(sentence) #=> Creates a method taking a sentence argument
    alphabet = ('a'..'z').to_a #=> pushes the entire alphabet into an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #=>Here we are putting all of the alphabet into a hash with the zipped letters being the keys and the rotated letters as the values.
    #=> .zip puts each letter into its own array. .rotate(4) moves the first four individual alphabet array letters to the end and shift the rest to the front.
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #=> the choices we have for spaces
    
    original_sentence = sentence.downcase #=> lower casing for every letter for the original sentence
    encoded_sentence = [] #=> pushes our encoded sentence into an array
    original_sentence.each_char do |element| #=> each letter in the sentence will be our element
      if cipher.include?(element) #=> if the cipher hash we created on line 15 includes one of the letters from the original sentence the it will do...
        encoded_sentence << cipher[element] #=> the corresponding element in the cipher will be pushed into the empty array created on line 20
      elsif element == ' ' #=> if there is a space then do...
        encoded_sentence << spaces.sample #=> the space will be replaced by one random choice from the spaces
      else 
        encoded_sentence << element #=> put in the same element if it doesn't match the cipher or space elements
      end
     end
    
    return encoded_sentence.join #=> combines all of the arrays as a coded sentence
end

# Questions:
# 1. What is the .to_a method doing?
  #=> It pushes the object into an array
# 2. How does the rotate method work? What does it work on?
  #=> it rotates the front to the end of the array. It works on arrays. Documentation: http://ruby-doc.org/core-1.9.2/Array.html#method-i-rotate
# 3. What is `each_char` doing?
  #=>it passes each character in the string to the given block. (Batman would become B a t m a n). In this case, each letter of our original sentence is being passed through the method
# 4. What does `sample` do?
  #=> chooses a random element from the array
# 5. Are there any other methods you want to understand better?
  #=> Reviewing the documentation helped enough to where I think I have a solid understanding.
# 6. Does this code look better or worse than your refactored solution
  #=> probably better, I haven't done it yet and I'm crunched for time being unable to do anything on the weekend. Will do it tomorrow morning with my partner.
# 7. of the original cipher code? What's better? What's worse?
  #=> the hash is simpler, has a lot less code. Honestly. the previous code  was a LOT harder to follow.
#8. Is this good code? What makes it good? What makes it bad?
  #=> This is great code. I fiddled with it and didn't find anything unecessary. But I'm not a professional coder.
  #=> This code is clean, it's concise, and it's very easy to follow.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?

p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

#=> It's returning different objects from the spaces so it's won't return the same code each time.



# 5. Reflection 
=begin

What parts of your strategy worked? What problems did you face?
  I enjoy reverse engineering code. Understanding this was no problem and I was able to easily understand how it worked.
  I broke everything apart piece by piece and feel very comfortable with it.

What questions did you have while coding? What resources did you find to help you answer them?
  I wanted to understand a few methods, so I went to the official documentation website to understand them.

What concepts are you having trouble with, or did you just figure something out? If so, what?
  None with this.

Did you learn any new skills or tricks?
  Combining .zip and .rotate within a hash seemed to work very well. I want to do more research to see more of its application.

How confident are you with each of the learning objectives?
  Very confident with finding out how things work.

Which parts of the challenge did you enjoy?
  All of it.

Which parts of the challenge did you find tedious?
  None, I love taking things apart piece by piece and learning how they work.
=end