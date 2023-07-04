class Player 
  attr_accessor :life
  attr_reader :id

  def initialize(id)
    @id = id
    # Set default life
    @life = 3
  end
end

# Test manipulating Player
# player_one = Player.new("player 1")
# p player_one

# player_one.life -= 1
# p player_one

