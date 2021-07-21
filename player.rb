class Player
  attr_accessor :name, :lives
  LIVES = 3

  def initialize(name)
    @name = name
    @lives = LIVES
    @short_name = "P#{name.split.last}"
  end

  def info
    "#{@short_name}: #{lives}/#{LIVES}"
  end

  def decrease
    self.lives = self.lives - 1
  end

  def win_message
    "#{name} wins with a score of #{lives}/#{LIVES}"
  end
  
end