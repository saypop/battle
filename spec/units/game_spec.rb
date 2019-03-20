require './lib/game.rb'

describe Game do

  let(:ryu) {double(:player)}
  let(:ken) {double(:player)}
  let(:game) {Game.new(ken, ryu)}

  it 'let player be attacked' do
    expect(game).to respond_to(:attack).with(1).argument
  end

  it 'takes life away from an opponent after attacking' do
    expect(ryu).to receive(:take_damage)
    game.attack(ryu)
  end

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
