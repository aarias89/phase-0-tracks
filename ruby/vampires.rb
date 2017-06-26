

def vamp_test
puts "What is your name?"
name=gets.chomp
puts"How old are you?"
age =gets.chomp.to_i
puts"What year were you born in?"
birth_year =gets.chomp.to_i
puts"Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread=gets.chomp
puts"Would you like to enroll in the company’s health insurance?"
insurance=gets.chomp

real_age= 2017 - birth_year
survey_result=" "




case
 # Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
  when name == "Drake Cula" || name == "Tu Fang"
  survey_result="Definitely a vampire."
  # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
  when age==real_age && (garlic_bread=="yes"|| insurance=="yes")
  survey_result="Probably not a vampire."
 # If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  when age != real_age && (garlic_bread == "no" && insurance == "no")
   survey_result="Almost certainly a vampire."
 # If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
  when age != real_age && (garlic_bread == "no" || insurance == "no")
   survey_result="Probably a vampire."
# Otherwise, print “Results inconclusive.”
  else
   survey_result="Results inconclusive"
end
allergies = " "
  until allergies == "done" || allergies == "sunshine"
    puts "Any allergies?"
  allergies = gets.chomp
    end
  if allergies == "sunshine"
    survey_result ="Probably a vampire."
    end
puts survey_result


end

puts "How many employees will be processed?"
employee_number = gets.to_i
i = 0
until i == employee_number
  vamp_test
  i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
