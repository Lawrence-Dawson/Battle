
class Game

  attr_reader :attack, :players, :current_turn, :winner, :loser

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    opponent_of(current_turn).receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent
    opponent_of(current_turn)
  end

  def over?
    if @player_1.hp == 0 || @player_2.hp == 0
      @loser = @players.select { |player| player.hp == 0}.first
      @winner = @players.select { |player| player.hp != 0}.first
      return true
    else
      false
    end
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end



end
