require './lib/game.rb'

describe Game do

  let(:ryu) {double(:player)}
  let(:ken) {double(:player)}
  let(:game) {Game.new(ken, ryu)}

  it 'counts the turns' do
    expect{game.next_turn}.to change{game.turn}.by(1)
  end

  it 'returns the attacking player' do
    game.next_turn
    expect(game.attacker).to eq ken
  end

  it 'returns the defending player' do
    game.next_turn
    expect(game.defender).to eq ryu
  end

end
