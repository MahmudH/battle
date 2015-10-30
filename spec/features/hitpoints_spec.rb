require 'spec_helper'

feature 'view hit points' do
  scenario 'viewing player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content "P2 has 100 HP remaining"
  end
end
