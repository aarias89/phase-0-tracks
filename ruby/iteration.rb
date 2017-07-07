# def greetings
#   puts "this is within the method"
#   yield
# end

# greetings {puts "this is outside the method"}
# -Array- .each .map!
# -hash - .each
#Release 1
favorite_food=["pizza","tacos","cookies","ice cream","sushi"]

states = {
        New_Jersey:"Trenton",
        New_York:"Albany",
        Connecticut:"Hartford",
        Pennsylvania:"Harrisburg",
        Delaware:"Dover"
      }

# favorite_food.each  {|x| puts "My favorite food is #{x}."}

# states.each do  |state,capital|
#   puts "#{capital} is the capital of #{state}"
#   end
# sorted_food=[]
# favorite_food.map! do |x|
#   puts x
#   x.upcase!
#   end

# p favorite_food

#RELEASE 2
# 1______________________________________________________________________
states.delete_if {|state,capital| state==:Connecticut }
p states

favorite_food.delete_if {|food| food=="cookies"}
p favorite_food
#2_______________________________________________________________________
states.keep_if{|state,capital| state==:New_York}
favorite_food.select {|food| food=="sushi"}
#3_______________________________________________________________________


#4_______________________________________________________________________
