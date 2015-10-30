feature 'We want to switch turns' do
  scenario 'switch turns' do
    sign_in_and_play
    click_button('Attack')
    click_button('Switch Turn')
    expect(page).to have_content "P1's turn"
  end
end
