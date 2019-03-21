# Ask these two questions everytime!
    # 1. What does the user have to do?
    # 2. What does the user expect to see?

  # As a Player,
  # So I can Lose a game of Battle,
  # I want to see a 'Lose' message if I reach 0HP first

# So... user goes to homepage => sees a button to start fight
# Then... user clicks start fight button => sees a form to enter players names and submit button
# Then... user inputs player1 and player2 names and hits submit => user sees the title of the fight and opponents HP
# Then... user clicks attack => sees confirmation of attack
# Then... after a user attacks => their opponents life will reduce by 2 HP
# Then... after a user clicks ok => it will be the other players turn
# Then... on the play page => current player will see their life total
# Then... when a player's life total reaches 0 => they see a game over message


feature 'See a game over message' do
  scenario 'when your hitpoints reach 0' do
    sign_in_and_play
    attack_19_times
    expect(page).to have_content 'Game over!'
  end
end
