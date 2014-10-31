class Judge
  WINNING_MOVES_AGAINST = {
    "Samus" => "Link",
    "Link" => "Luigi",
    "Luigi" => "Samus"
  }

  def initialize(player_choice, computer_move)
    @player_choice = player_choice
    @computer_move = computer_move
  end

  attr_reader :player_choice, :computer_move

  def who_won?
    if
    player_choice == WINNING_MOVES_AGAINST[computer_move]
    puts "You won"
    else
      puts "you lose"
    end
  end
end
