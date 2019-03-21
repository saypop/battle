require './lib/attack.rb'

describe Attack do

  let(:ryu) {double(:player)}
  let(:ken) {double(:player)}
  let(:Attack) {described_class}

  it 'takes life away from an opponent after attacking' do
    expect(ryu).to receive(:take_damage)
    Attack.run(ryu)
  end

end
