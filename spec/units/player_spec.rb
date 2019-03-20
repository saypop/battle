# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

require './lib/player.rb'

describe Player do

  let(:david) {Player.new("David")}
  let(:goliath) {Player.new("Goliath")}

  it 'returns the players name' do
    expect(david.name).to eq "David"
  end
  it 'has the attribute HP' do
    expect(david.hit_points).to eq 100
  end
  it 'has a way of losing hit points' do
    expect{david.take_damage}.to change{david.hit_points}.by(-10)
  end

end
