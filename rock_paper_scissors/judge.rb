class Judge
  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
  end

  def outcome
    [@user_choice, @computer_choice]
  end

  def who_won?
    rock_beats_scissors ||
      scissors_beats_paper ||
      paper_beats_rock ||
      tie ||
      loser
  end

  def rock_beats_scissors
    if outcome == ["R", "S"]
      winner
    end
  end

  def scissors_beats_paper
    if outcome == ["S", "P"]
      winner
    end
  end

  def paper_beats_rock
    if outcome == ["P", "R"]
      winner
    end
  end

  def winner
    puts "WINNER"
  end

  def tie
    if @user_choice == @computer_choice
      puts "It's a tie..."
    end
  end

  def loser
    puts "You Lost to a Soulless Machine"
  end
end
