require 'game'
describe Game do

  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player }


  describe '#attack' do
    it 'attacks player_one' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#initialize' do
    it 'saves both player names' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end

  describe '#switch turns' do
    it 'it defaults to player ones turn' do
      expect(game.current_turn).to eq player_1
    end

    it 'changes turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end

  end
end
