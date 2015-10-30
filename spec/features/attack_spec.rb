require 'spec_helper'

feature 'attack player and receive confirmation' do
  scenario 'attack players 2' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content "P1 attacked P2"
  end

  scenario ' attack reduces player 2s HP' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).not_to have_content "P2 has a remaining HP of 100"
    expect(page).to have_content "P2 has a remaining HP of 90"
  end
end
