#create method that advances one letter forward
def encrypt(string)

  secret=string

  puts secret + secret[-1].next
  #puts indexed values +1
end
#
#

encrypt("zed")