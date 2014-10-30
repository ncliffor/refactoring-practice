class Judge
  WINNING_MOVE_AGAINST = {
    "R" => ["P", "Sp"],
    "P" => ["S", "L"],
    "S" => ["R", "Sp"],
    "L" => ["R", "S"],
    "Sp" => ["L", "P"]
  }

  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
  end

  def won?
    WINNING_MOVE_AGAINST[@computer_choice].include?(@user_choice)
  end

  def who_won?
    check_winning_move_against ||
      tie ||
      loser
    puts "-------------------------------"
  end

  private

  attr_reader :user_choice, :computer_choice

  def check_winning_move_against
    if WINNING_MOVE_AGAINST[computer_choice].include?(@user_choice)
      winner
    end
  end

  def winner
    puts "WINNER"
    if @user_choice == "Sp"
      spock_win_message
    end
    true
  end

  def spock_win_message
    puts "You played as Spock and won! Live long and prosper"
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
