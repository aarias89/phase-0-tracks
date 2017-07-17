class Santa
# An initialize method that prints "Initializing Santa instance ...".
def initialize(gender,ethnicity)
  print "Initializing Santa instance ..."
  @gender=gender
  @ethnicity=ethnicity
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age=0
end
# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
def speak
  print "Ho, ho, ho! Haaaappy holidays!"
end

# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
def eat_milk_and_cookies(cookie)
  print "That was a good #{cookie}"
end

end
nick = Santa.new
nick.speak
nick.eat_milk_and_cookies("raisin cookie")

# Release 1 Driver Code
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

while santas.count >= 10 do
random_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
santas<<random_santa
end
end
p santas

end


