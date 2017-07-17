 #create Game class
 #Which attributes will be needed?( )
 #Method:include initialize method
    #what instance variables will it include?( )
#Method:take input and store as array
#Method: Check if player 2 letter are included within the answer.
#Method: Output current guesses and guessed letters
#Method: Check if player guessed word and congratulate or taunt if not.
class Game
  attr_reader :guessed_letter
  attr_reader :end
  def initialize(word)
    @word=word.split('')
    @guessed_letter=[]
    @end=false
  end

  def letter_check(letter)
   @guessed_letter << letter
   if @word.include?(letter)
     puts "Correct!"
    else
      puts "Try,again!"
    end
  end

  def result_output
    @word.map do |letter|
      if @guessed_letter.include?(letter)
        print letter
      else
        print ',_'
      end
    end
  # puts @word.join
  end

  def win
    @word.all? do |letter|
      @guessed_letter.include?(letter)
    end
  end

  def lost
    @end=true
  end

end



puts "Time to play the guessing game!! \n\nPlayer one, choose a word for player 2 to guess: "
word=gets.chomp.downcase
game=Game.new(word)


while !game.end
  puts "\nInput letter:"
  letter=gets.chomp
  game.letter_check(letter)
  game.result_output
  if game.win
    puts "\nyou won!"
  game.lost
  break
  end

  if game.guessed_letter.length == word.length
    puts "\nMax amount of tries, you lost."
    game.lost
  end

end
