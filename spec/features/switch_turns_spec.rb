# Ask these two questions everytime!
    # 1. What does the user have to do?
    # 2. What does the user expect to see?

  # As two Players,
  # So we can continue our game of Battle,
  # We want to switch turns

# So... user goes to homepage => sees a button to start fight
# Then... user clicks start fight button => sees a form to enter players names and submit button
# Then... user inputs player1 and player2 names and hits submit => user sees the title of the fight and opponents HP
# Then... user clicks attack => sees confirmation of attack
# Then... after a user attacks => their opponents life will reduce by 2 HP
# Then... after a user clicks ok => it will be the other players turn


feature 'Switch turns' do
  scenario 'after player attacks' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'David: 100 HP / 100 HP'
  end
end
