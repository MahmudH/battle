
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "P1 vs P2"
  end
end


# describe "creating new players", :type => :feature do
#   before :each do
#     user1 = User.make(:player1 => 'user1')
#     user2 = User.make(:player2 => 'user2')
#   end
#
#   it "registers players names" do
#     visit '/names'
#     within ('#names') do
#       fill_in 'player1', :with => 'user1'
#       fill_in 'player2', :with => 'user2'
#     end
#     click_button 'Submit'
#     expect(page).to have_content "Fight!"
#   end
#
# end
