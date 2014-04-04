# U2.W4: Cipher Challenge


# I worked on this challenge [with: Devin Johnson].

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

=begin

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Separates each character of coded_message, lowercases them and then puts them into an array
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # This is iterating through the array called 'input', on line 8
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # This is iterating through each key value of the hash called called 'cipher'
      if x == y  # This is comparing x (the array element) to y (the hash keys). If they match, the following code block runs.
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] # If there's a match, the value associated with the hash key is appended into an array called decoded_sentence
        found_match = true
        break  # This exits the loop without returning any values
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # If the coded message contains any of these values, a space is appended into decoded_sentence
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # This creates an array containing values 0 to, and including 9.  If x matches one of those values, it is appended into decoded_sentence
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # If no match is found in the if statement above, x is put into decode_sentence as is
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) # This searches through our decoded_sentence. If it finds any digit value within the string, the following code block runs.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # This is a destructive gsub method that changes the value of the string, 'decoded_sentence'. Any number value is converted to an integer, divided by 100 and gets put back into the string.
  end  
  return decoded_sentence # What is this returning?        
end
=end
# Your Refactored Solution
def translator(coded_message, shift = -4)
  decoded_sentence = []
  split_message = coded_message.downcase.split("")
  keys = ('a'..'z').to_a #This creates a new array with 26 elements, a through z
  values = keys.rotate(shift)
  cipher = {}
  input_index = 0
  (keys.length).times do
    cipher[keys[input_index]] = values[input_index]
    input_index += 1
  end

  split_message.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end

# Driver Code:
p translator("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p translator("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p translator("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p translator("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p translator("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p translator("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"
p translator("q&eivb&kivlg!", -8) == "i want candy!"

# Reflection
=begin

What parts of your strategy worked? What problems did you face?
  We had some issues making our hashes work initially, problem solving got a little tedious, but we finally got our code to work.


What questions did you have while coding? What resources did you find to help you answer them?
  Why don't our tests pass when we remove the .match, gsub searches and substitutes, so shouldn't it be needless?
  We tried to remove the if not, the trues and falses, but that didn't work. Why do we need the true and falses?

What concepts are you having trouble with, or did you just figure something out? If so, what?
  Everything stated above. There are syntatic nuances that I need to learn.

Did you learn any new skills or tricks?
  I learned more on regexp

How confident are you with each of the learning objectives?
  relatively confident

Which parts of the challenge did you enjoy?
  I enjoy working with partners

Which parts of the challenge did you find tedious?
  I hate debugging. It takes forever and I don't understand everything enough to do it super successfully.
=end
 