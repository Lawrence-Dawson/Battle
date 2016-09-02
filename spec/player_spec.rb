require 'player'

describe Player do
  subject(:lawrence) {Player.new('Lawrence')}
  subject(:james) {Player.new('James')}

  describe '#name' do
    it 'returns the name' do
      expect(lawrence.name).to eq 'Lawrence'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(lawrence.hp).to eq described_class::START_HP
    end
  end

  describe '#recieve_damage' do
    it 'reduces the player hit points' do
      expect {lawrence.receive_damage}.to change { lawrence.hp }.by(-10)
    end
  end
end
