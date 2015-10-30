require 'player'

describe Player do
let(:player1) { Player.new(:name) }
let(:player2) { Player.new(:name) }


  it 'returns the player name' do
    expect(player1.name).to eq :name
  end

  it 'expects the player to have an hp of 100 at the start' do
    expect(player1.health).to eq Player::DEFAULT_HEALTH
  end

end
