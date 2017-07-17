module Shout
 # def self.yell_angrily(words)
 #    words + "!!!" + " :("
 #  end

 #  def self.yelling_happily(words)
 #    words + " Yeah baby!"
 #  end
 def stopping(text)
    puts "Stop! #{text}"
 end
end
# p Shout.yell_angrily("I need to cool off")
# p Shout.yelling_happily("I have tomorrow off")

class Supremes
  include Shout
end

class Robber
  include Shout
end

song=Supremes.new
song.stopping(" In the name of love!")

crime=Robber.new
crime.stopping(" or should I say FREEZE!")