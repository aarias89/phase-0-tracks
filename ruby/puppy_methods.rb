class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times {print "Woof!"}
  end

  def roll_over
    print "*rolls over*"
  end

  def dog_years(i)
    age=9*i
    p age
  end

  def mail_man
    puts "*chases mailman around the block*"
  end

def initialize
  puts "Initializing new puppy instance ..."
end

end

marley= Puppy.new
marley.fetch("ball")
marley.speak(6)
marley.roll_over
marley.dog_years(9)
marley.mail_man

class Car

  def initialize
    puts "Initializing new car"
  end

  def drive(i)
    puts "You just drive #{i} miles."
  end

  def no_gas
    print "Car is dead, you forgot to check the gas."
  end

end

subaru=Car.new
subaru.drive(300)
subaru.no_gas

cars=[]
50.times{cars << Car.new}
cars.each{|car| car.drive(200)
                car.no_gas}



# release 0
# Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
# Add a speak method that takes an integer, and then prints "Woof!" that many times.
# Add a roll_over method that just prints "*rolls over*".
# Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
# Add one more trick -- whichever one you'd like.
# If you haven't already, update your driver code to demonstrate that all of these methods work as expected.