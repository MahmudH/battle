
feature 'Game over' do
  context 'when Player 2 reaches 0 HP first' do
    scenario 'Player 1 wins' do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(100)
      click_button 'Attack'
      expect(page).to have_content 'P2 loses!'
    end
  end
end
