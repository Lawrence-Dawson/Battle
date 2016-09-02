require 'game'
describe Game do

  subject(:game) {described_class.new}
  let(:player_one) { double :player }
  let(:player_one) { double :player }


  describe '#attack' do
    it 'attacks player_one' do
      expect(player_one).to receive(:receive_damage)
      game.attack(player_one)
    end
  end
end
