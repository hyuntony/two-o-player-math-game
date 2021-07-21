require_relative 'player'
require_relative 'game'
require_relative 'question'

$player1 = Player.new('Player 1')
$player2 = Player.new('Player 2')
$game = Game.new
$question = Question.new

def start_game
  puts "#{$game.turn}: #{$question.generate}"
  print "> "
  answer = $stdin.gets.chomp

  if $question.validate(answer)
    puts "#{$game.turn}: YES! You are correct."
  else
    puts "#{$game.turn}: Seriously? No!"
    ($game.turn == "Player 1") ? $player1.decrease : $player2.decrease
  end

  if $player1.lives < 1 || $player2.lives < 1
    puts ($game.turn == "Player 1") ? $player2.win_message : $player1.win_message
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else
    puts "#{$player1.info} vs #{$player2.info}"
    $game.switch
    puts "----- NEW TURN -----"
    start_game
  end

end

start_game