
puts "What's the hamster's name?"
hamster_name=gets.chomp

vol = 0
while vol > 10 || vol < 1
  begin
    puts "How loud is the hamster, 1-10, 10 being loudest:"
    vol = gets.chomp
    vol = Integer(vol)
  rescue
    retry
  end
end

puts "What color is your hamster?"
color=gets.chomp
puts "Is hamster a good candidate for adoption?(y/n)"
adopt=gets.chomp.downcase
until adopt== "y" ; adopt=="n"
  puts "Is hamster a good candidate for adoption?(y/n)"
  adopt=gets.chomp.downcase
end

puts "approximately how old is the hamster?"
age = gets.chomp
if age == ''
    age = nil
else
    age = age.to_i
end



puts "--------------"
puts "Thanks for telling us about your hamster. Here's a summary of your data:"
if age==nil
  puts "Your #{color} hamster's name is #{hamster_name}."
else
  puts "Your #{color} hamster's name is #{hamster_name}, and he/she is approximately #{age}."
end
if adopt == "y"
  puts "#{hamster_name} is a good candidate for adoption."
else
  puts "#{hamster_name} is not currently a good candidate for adoption."
end
puts "On a scale of 1 to 10, your hamster's loudness level is #{vol}."