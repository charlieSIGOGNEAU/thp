class Game
  attr_accessor :human_player, :players

  def initialize(name)
    @players = (0..3).map { |i| Player.new("player #{i}")}
    @human_player = HumanPlayer.new(name)
  end

  def kill_player(test_player)
    @players.delete(test_player)
  end

  def is_still_ongoing?
    !@players.empty?  && @human_player.life_points>0
  end

  def show_players 
    @human_player.show_state
    puts "il reste #{@players.length} bots"
  end

end