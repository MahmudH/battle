require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player)}
  subject(:game) { described_class.new(player1, player2) }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player2
    end
  end

  it 'attack reduces HP by 10 points' do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end
end
