class Judge
  WINNING_MOVES_AGAINST = {
    "Samus" => ["Link", "Dk"],
    "Link" => ["Luigi", "Dk"],
    "Luigi" => ["Samus", "Kirby"],
    "Dk" => ["Luigi", "Kirby"],
    "Kirby" => ["Link", "Samus"]
  }

  def initialize(player_choice, computer_move)
    @player_choice = player_choice
    @computer_move = computer_move
  end

  attr_reader :player_choice, :computer_move

  def who_won?
    if
      WINNING_MOVES_AGAINST[computer_move].include?(player_choice)
      puts "You won"
    else
      puts "you lose"
    end
  end
end
