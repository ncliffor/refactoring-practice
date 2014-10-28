require "./player"
require "./judge"

class Game
  CHOICES = ["R", "P", "S"]
  QUIT = ["press q to quit"]

  def play
    give_user_choices
    get_user_choice
    computer_chooses
    display_outcome
    judge = Judge.new(@users_choice, @computers_play)
    judge.who_won?
  end

  def give_user_choices
    puts "Your move, what do you choose?"
    options
  end

  def options
    print_options
    print " |"
    puts
    puts QUIT
  end

  def print_options
    CHOICES.each do |choice|
      print " | " + choice
    end
  end

  def get_user_choice
    @users_choice = gets.chomp.upcase
  end

  def computer_chooses
    @computers_play = CHOICES.sample
  end

  def display_outcome
    puts "You played #{@users_choice}"
    puts "The computer played #{@computers_play}"
  end
end

game = Game.new
game.play

