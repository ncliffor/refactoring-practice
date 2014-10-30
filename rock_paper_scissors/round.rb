class Round
  CHOICES = Judge::WINNING_MOVE_AGAINST.keys
  QUIT_MESSAGE = ["press q to quit"]

  def play
    check_in_with_user
    computer_chooses
    run_outcome
  end

  def won?
    judge = Judge.new(@users_choice, @computers_play)
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
  end

  def get_user_choice
    @users_choice = gets.chomp.capitalize
    check_user_input_for_valid_choice
  end

  def check_user_input_for_valid_choice
    if !CHOICES.include?(@users_choice)
      please_select_valid_choice_message
    end
  end

  def please_select_valid_choice_message
    puts "Please select a valid option"
    get_user_choice
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
