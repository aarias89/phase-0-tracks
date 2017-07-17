module Shout
 def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + " Yeah baby!"
  end
end

p Shout.yell_angrily("I need to cool off")
p Shout.yelling_happily("I have tomorrow off")