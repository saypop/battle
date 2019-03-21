# Ask these two questions everytime!
    # 1. What does the user have to do?
    # 2. What does the user expect to see?

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10


# So... user goes to homepage => sees a button to start fight
# Then... user clicks start fight button => sees a form to enter players names and submit button
# Then... user inputs player1 and player2 names and hits submit => user sees the title of the fight and opponents HP
# Then... user clicks attack => sees confirmation of attack
# Then... after a user attacks => their opponents life will reduce by 2 HP


feature 'Reduce opponents hitpoints' do
  scenario 'after attacking' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Their hitpoints: 90 HP / 100 HP'
  end
end
