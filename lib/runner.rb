class Runner
  def run
    welcome_message
    decide_to_play
  end

  def welcome_message
    print "Welcome to MASTERMIND\n\n"
    print"Would you like to (p)lay, read the (i)structions, or (q)uit?\n"
    print '> '
  end

  def decide_to_play
    input = gets.chomp.downcase
    system 'clear'

    loop do
      if input == 'q'
        print "See you next time!\n"
        break
      elsif input == 'i'
        print "Your objective is to guess the sequence of the four elements in as few of tries as possible. Do you want to play?\n"
        input = nil
        input = gets.chomp.downcase
      elsif input == 'p'
        print "I have generated a beginner sequence with four elements made up of : r(ed), (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess?\n"
        guess = gets.chomp.downcase
        validate_guess(guess)
        break
      else
        print "Invalid, please try again. Enter (p)lay, read the (i)structions, or (q)uit.\n"
        system 'clear'
        input = nil
        input = gets.chomp.downcase
      end
    end
  end

  def validate_guess(guess, code)
    if guess == code
      print "Congratulations! You guessed the sequence #{code} in x guesses over x minutes, x seconds."
    end
  end
end
