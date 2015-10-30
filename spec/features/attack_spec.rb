require 'spec_helper'

feature 'attack player and receive confirmation' do
  scenario 'attack players 2' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content "P1 attacked P2"
  end
end
