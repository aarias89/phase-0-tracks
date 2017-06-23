#create method that advances one letter forward
def encrypt(string)

  secret=string
  secret=secret + secret[-1].next
  secret[0] = ""
  # secret.delete[0]
  # puts secret
  #secret=string
  #secret.index()
  puts secret

end
#
#

encrypt("abcd")
