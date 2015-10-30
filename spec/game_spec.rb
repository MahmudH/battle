require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player)}
  let(:game) {Game.new(player1, player2)}
  it 'attack reduces HP by 10 points' do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end
end
