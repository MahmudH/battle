feature 'We want to switch turns' do
  scenario 'switch turns' do
    sign_in_and_play
    click_button('Attack')
    click_button('Switch Turn')
    expect(page).to have_content "P2's turn"
  end

  scenario 'both players can lose points' do
    sign_in_and_play
    click_button('Attack')
    click_button('Switch Turn')
    click_button('Attack')
    click_button('Switch Turn')
    expect(page).not_to have_content '100'
  end
end
