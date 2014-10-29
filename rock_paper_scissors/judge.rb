class Judge
  WINNIN_MOVE_AGAINST = {
    "R" => "P",
    "P" => "S",
    "S" => "R",
  }

  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
  end

  def outcome
    [@user_choice, @computer_choice]
  end

  def who_won?
    check_winning_move_against ||
      tie ||
      loser
  end

  def check_winning_move_against
    if @user_choice == WINNIN_MOVE_AGAINST[@computer_choice]
      winner
    end
  end

  def winner
    puts "WINNER"
    true
  end

  def tie
    if @user_choice == @computer_choice
      puts "It's a tie..."
      true
    end
  end

  def loser
    puts "You Lost to a Soulless Machine"
  end
end
