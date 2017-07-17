class Santa
# An initialize method that prints "Initializing Santa instance ...".
def initialize
  print "Initializing Santa instance ..."
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


