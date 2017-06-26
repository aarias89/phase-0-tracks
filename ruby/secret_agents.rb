=begin
-Pseudo code
---Encrypt--
-declare local variables needed for method.
  -counter
  -current letter
  -string numerator
  -result string
-create loop
  -find  out current letter using index
  -take value of current letter and shift it to the right
  -add new value to result
-close loop when index counter iterates through every character in parameter.
  -increase value of counter to move onto next letter.
-add conditional to account for edge cases and blank spaces. Conditional has to go inside loop.

--Decrypt--
-declare local variables needed for method.
  -alphabet variable to include a-z inclusive range to use with indexing/counter
  -counter
  -result string
-loop until value of counter is equal to number or letters in string
  -add conditional to account for edge cases and blank spaces. Conditional has to go inside loop.
  -iterate through parameter string
    -get current letter index value in relation to alphabet array
    -modify index value to reflect the left shift -1
    -use new index value to get new letter value from original alphabet array
-close loop
=end

# METHOD DECLARATIONS

#shifts value of letter to the right by value of 1
def encrypt (text)
  #declared counter to keep track of iterations
  current_index=0
  #declared number to compare to counter
  number_letters=text.length
  #declared empty string to add iterated values from method parameter.
  encrypted_string= ""
#added loop that will end when counter number(iterations) is equal to number of characters in parameter.
  until current_index == number_letters
    current_letter=text[current_index]
    #conditional to address edge case and spaces
    if current_letter == 'z'
      encrypted_string += 'a'
    elsif current_letter == ' '
      encrypted_string+= ' '
    else
    # if string's character passes fails both conditions, its added to result string.
      encrypted_string += text[current_index].next
    end
    #increase counter to end loop when condition is met
    current_index += 1
  end

    return encrypted_string
end

#shifts value of letter to the left by value of -1
def decrypt(text)
  #declared counter to keep track of iterations
  counter=0
  #declared variable with array of alphabet from a to z
  alpha=("a"..."z").to_a
  #declared variable to set number to compare to counter
  number_text=text.length
  #declared empty string to add updated values from method parameter.
  message= ""

  #added loop that will end when counter number(iterations) is equal to number of characters in parameter.
  until counter==number_text
    current_letter=text[counter]
    #conditional to address edge case and spaces
    if current_letter=='a'
      message+='z'
    elsif current_letter==' '
      message+=' '
    else
      #modify index value to reflect the left shift -1
      new_alpha_index=alpha.index(current_letter)-1
      # use new index value to get new letter value from original alphabet
      new_alpha_letter=alpha[new_alpha_index]
      #add iterated parameter value to final message string.
      message+=new_alpha_letter
    end
    #increase counter to validate loop
    counter+=1
  end
return message
end

# OUR DRIVER CODE

# ask user for action to call method
puts "Would you like to 'encrypt' or 'decrypt' password?"
method_type=gets.chomp
#Based on user input, prompts agent for password to pass through user-chosen method.
  if method_type=="encrypt"
    puts "password to be encrypted:"
    password=gets.chomp
    puts encrypt(password)
  elsif method_type=="decrypt"
    puts "password to be decrypted:"
    password=gets.chomp
    puts decrypt(password)
  else
    puts "I don't understand."
end
# print decrypt(encrypt("swordfish"))
