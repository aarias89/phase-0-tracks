# Interior design client program
#Info needed: Name, age, number of children, child-proofing, decor theme,special instructions.
#create empty hash containing the above values as symbol keys.
# prompt user to input all of info to be stored in keys as values, and convert all user-provided info to appropriate data type and match value to key.
# check if all values have been answered.
# print out hash.
#ask user if they want to update anything in the hash, if "none" skip, if they want to add a key, take input string and convert to symbol and store in hash.
#print final version of hash.

def client_program
  client_info={
  name: "",
  age: "",
  number_of_children: "",
  child_proofing: "",
  decor_theme: "",
  special_instructions: "",
 }
print "What is your name:"
name=gets.chomp.capitalize!
client_info[:name]=name
print "How old are you:"
age=gets.to_i
client_info[:age]=age
print "How many children do you have:"
number_of_children=gets.to_i
client_info[:number_of_children]=number_of_children
print "would you like to child-proof your home:(y/n)"
child_proofing=gets.chomp
  if child_proofing=="y"
    child_proofing=true
  else
    child_proofing=false
  end
client_info[:child_proofing]=child_proofing
print "What decor theme do you prefer:"
decor_theme=gets.chomp
client_info[:decor_theme]=decor_theme
print "Any special instructions:"
special_instructions=gets.chomp
client_info[:special_instructions]=special_instructions
print client_info

print "\n\ntype in category that needs to be changed, if everything is accurate type 'none'.\n\n"
answer=gets.chomp
  if answer=="none"
    print "Thank you for the information!"
  else
    answer=answer.tr(" ","_") #number_of_children
    answer=answer.to_sym
    puts "What is the new value:"
    answer_value=gets.chomp
    client_info.store(answer,answer_value)
    puts "Thank you, your changes have been saved.\n\n"
  end


print client_info


end


client_program