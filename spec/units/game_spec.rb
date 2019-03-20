require './lib/game.rb'

describe Game do

  let(:ryu) {double(:player)}
  let(:ken) {double(:player)}
  let(:game) {Game.new(ken, ryu)}

  it 'retrieves player 1' do
    expect(game.player_1).to eq ken
  end

  it 'retrieves player 2' do
    expect(game.player_2).to eq ryu
  end

  it 'let player be attacked' do
    expect(game).to respond_to(:attack).with(1).argument
  end
  it 'takes life away from an opponent after attacking' do
    expect(ryu).to receive(:take_damage)
    game.attack(ryu)
  end

end
