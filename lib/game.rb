require 'forwardable'

class Game
  extend Forwardable
  attr_reader :player_1, :player_2

  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_2, :name, :player_2_name
  def_delegator :player_1, :health, :player_1_health
  def_delegator :player_2, :health, :player_2_health

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
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

end
