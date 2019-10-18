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
      if input == 'p'
        print "I have generated a beginner sequence with four elements made up of : r(ed), (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess?\n"
        guess = gets.chomp.downcase
        validate_guess(guess)
        break
      elsif input == 'i'
        print "Hello"
      elsif input == 'q'
        print "See you next time\n"
      else
        "Invalid, please try again: "
      end
    end
  end

  def validate_guess(guess)

  end
end
