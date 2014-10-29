class Round
  CHOICES = Judge::WINNING_MOVE_AGAINST.keys
  QUIT_MESSAGE = ["press q to quit"]

  def play
    check_in_with_user
    computer_chooses
    run_outcome
  end

  def won?
    judge = Judge.new(@user_choice, @computer_choice)
    judge.won?
  end

  def check_in_with_user
    give_user_choices
    get_user_choice
  end

  def give_user_choices
    puts "Your move, what do you choose?"
    options
  end

  def options
    print "| #{CHOICES.join(" | ")} |"
    puts
    puts QUIT_MESSAGE
  end

  def get_user_choice
    @users_choice = gets.chomp.upcase
  end

  def computer_chooses
    @computers_play = CHOICES.sample
  end

  def run_outcome
    display_outcome
    judge_outcome
  end

  def display_outcome
    puts "You played #{@users_choice}"
    puts "The computer played #{@computers_play}"
  end

  def judge_outcome
    judge = Judge.new(@users_choice, @computers_play)
    judge.who_won?
  end

end
