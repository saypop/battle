# Ask these two questions everytime!
    # 1. What does the user have to do?
    # 2. What does the user expect to see?

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

# So... user goes to homepage => sees a button to start fight
# Then... user clicks start fight button => sees a form to enter players names and submit button
# Then... user inputs player1 and player2 names and hits submit => fight starts
# Then... user clicks attack => sees confirmation of attack

feature 'See confirmation of attack' do
  scenario 'after attacking' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'You attacked Goliath!'
  end
end
