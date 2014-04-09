# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Clark Hinchcliff
# 2)

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  my_list = {
             "pie" => 8, 
             "cake" => 6, 
             "cookie" => 1
             }
             #{pie: 8} == {:pie => 8}
             #{"pie" => 8}
  
  has_fav_food = false

  my_list.each_key do |list_item|
    if list_item == fav_food
      has_fav_food = true
    end
  end
  
  if has_fav_food == false
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list.values_at(fav_food)[0]
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
    else
      while num_of_people > 0
        quant = {}
        my_list.each do |list_item, list_item_val|
          quant[list_item] = num_of_people / list_item_val
          num_of_people = num_of_people % list_item_val
        end
      end
      return "You need to make #{quant["pie"]} pie(s), #{quant["cake"]} cake(s), and #{quant["cookie"]} cookie(s)."
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 