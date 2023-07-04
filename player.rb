class Player 
  attr_accessor :life

  def initialize(name)
    @name = name
    # Set default life
    @life = 3
  end
end

# Test manipulating Player
# player_one = Player.new("player 1")
# p player_one

# player_one.life -= 1
# p player_one

