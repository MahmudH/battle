require 'forwardable'

class Game
  extend Forwardable
  attr_reader :player_1, :player_2, :current_player, :players, :opponent

  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_2, :name, :player_2_name
  def_delegator :player_1, :health, :player_1_health
  def_delegator :player_2, :health, :player_2_health
  def_delegator :current_player, :name, :current_player_name
  def_delegator :opponent, :health, :opponent_health

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = players.first
    @opponent = players.last
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    @opponent.receive_damage
  end

  def switch_turn
    if current_player == players.first
      @current_player = players.last
      @opponent = players.first
    else
      @current_player = players.first
      @opponent = players.last
    end
  end

end
