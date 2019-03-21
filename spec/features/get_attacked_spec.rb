# Ask these two questions everytime!
    # 1. What does the user have to do?
    # 2. What does the user expect to see?

  # As Player 1,
  # So I can see how close I am to losing,
  # I want to see my own hit points
  #
  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  #
  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP

# So... user goes to homepage => sees a button to start fight
# Then... user clicks start fight button => sees a form to enter players names and submit button
# Then... user inputs player1 and player2 names and hits submit => user sees the title of the fight and opponents HP
# Then... user clicks attack => sees confirmation of attack
# Then... after a user attacks => their opponents life will reduce by 2 HP
# Then... after a user clicks ok => it will be the other players turn
# Then... on the play page => current player will see their life total


feature 'See your hit points' do
  scenario 'on the confirmation that your were attacked page' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'Your hitpoints: 90 HP / 100 HP'
  end
end
