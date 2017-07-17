class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
# An initialize method that prints "Initializing Santa instance ...".
def initialize(gender,ethnicity)
  print "Initializing Santa instance ..."
  @gender = gender
  @ethnicity = ethnicity
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

def celebrate_birthday
  @age +=1
end

def get_mad_at(reindeer)
  @reindeer_ranking.delete(reindeer)
  @reindeer_ranking.push(reindeer)
end

end #end of class

# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("raisin cookie")

# Release 1 Driver Code
# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# 10.times do
# random= Santa.new(example_genders.sample, example_ethnicities.sample)
#   puts "I am a #{random.ethnicity} #{random.gender} santa!"
# end

john=Santa.new("bigender","Minotaur")
p john.celebrate_birthday
p john.get_mad_at("Vixen")
p john.gender
p john.age
p john.ethnicity

#release 4


  20.times do Santa.new(example_genders.sample, example_ethnicities.sample)
   @age = (0..140).to_a.sample
 end







