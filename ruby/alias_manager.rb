#gather user first and last name and store in variable.
puts "What is your real name:"
#set name to empty string to start loop
name=""
real_names=[]
aliases=[]


until name == "quit"

def fake_name(name)
name_array=name.chars
vowels=["a","e","i","o","u"]
name_array.map! do |letter|
    if vowels.include?(letter)
      letter=vowels.rotate(1)[vowels.index(letter)]
    else
#open case statement to deal with special characters
      case
      when letter=="z"
        letter="b"
      when letter=="d"
        letter="f"
      when letter=="h"
        letter="j"
      when letter=="n"
        letter="p"
      when letter=="t"
        letter="v"
      when letter==" "
        letter=" "
#if letter is not special character or vowel just output next value.
      else
        letter=letter.next
      end
      end
  end
#Join array of letters into words only separated by " " a space.
alias_name=name_array.join.split(' ')
#break words into array and capitalize and then join into string again.
alias_name.each{|word| word.capitalize!}
alias_name.join(' ')
end
name=gets.chomp
name.downcase!
#set conditions for loop while adding results of fake_name program into empty array to be called upon later.
if name != "quit"
  real_names << name
  aliases << fake_name(name)
  print fake_name(name) + " is the alias!\n\n"
  puts " Another name that needs alias? Type 'quit' if you're done!"

end
end

#set index to be able to differentiate names stored in aliases array.
idx = 0
until idx == aliases.length
 puts "#{aliases[idx]} identity is really #{real_names[idx]}!"
 idx += 1
end
