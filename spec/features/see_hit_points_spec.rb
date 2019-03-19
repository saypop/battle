# Ask these two questions everytime!
    # 1. What does the user have to do?
    # 2. What does the user expect to see?

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

# So... user goes to homepage => sees a button to start fight
# Then... user clicks start fight button => sees a form to enter players names and submit button
# Then... user inputs player1 and player2 names and hits submit => fight starts

feature 'See opponent hitpoints' do
  scenario 'while playing' do
    visit('/')
    fill_in :player_1_name, with: 'David'
    fill_in :player_2_name, with: 'Goliath'
    click_button 'Submit'
    expect(page).to have_content 'Goliath: 100 HP / 100 HP'
  end
end
