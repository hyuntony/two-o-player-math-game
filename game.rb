class Game
  attr_accessor :turn

  def initialize
    @turn = "Player 1"
  end

  def switch
    self.turn = (turn == "Player 1") ? "Player 2" : "Player 1"
    "#{turn}"
  end

end