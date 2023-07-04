require './player'
require './question'

class Game
  def initialize
    @player_one = Player.new(1)
    @player_two = Player.new(2)
  end

  def print_score
    puts "P1: #{@player_one.life}/3 vs P2: #{@player_two.life}/3"
  end

  def execute_turn(player)
    if Question.new.ask_question(player) == false
      puts "Player #{player.id}: Time to go back to grade-school, I guess."
      player.life -= 1
    else
      puts "I'm not as dumb as I look!"
    end
    print_score
  end

  def start_game
    @turn = 1
    while @player_one.life > 0 && @player_two.life > 0
      execute_turn(@turn%2 == 1 ? @player_one : @player_two)
      puts "------ NEW TURN -----"

      @turn += 1
    end

    @winner = @player_one.life > 0 ? @player_one : @player_two

    puts "Player #{@winner.id} wins with a score of #{@winner.life}"
    puts "----- GAME OVER -----"
    puts "Good bye!"

  end
end

game = Game.new
game.start_game