require 'forwardable'

class Game
  extend Forwardable
  attr_reader :player_1, :player_2, :current_player, :players

  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_2, :name, :player_2_name
  def_delegator :player_1, :health, :player_1_health
  def_delegator :player_2, :health, :player_2_health
  def_delegator :current_player, :name, :current_player_name

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = players.first
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    if current_player == players.first
      p current_player_name
      @current_player = players.last
    else
      @current_player = players.first
    end
  end

end
