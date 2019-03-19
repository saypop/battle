# Ask these two questions everytime!
    # 1. What does the user have to do?
    # 2. What does the user expect to see?

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

# So... user goes to homepage => sees a button to start fight
# Then... user clicks start fight button => sees a form to enter players names and submit button
# Then... user inputs player1 and player2 names and hits submit => fight starts

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'David'
    fill_in :player_2_name, with: 'Goliath'
    click_button 'Submit'
    expect(page).to have_content 'David vs. Goliath'
  end
end
