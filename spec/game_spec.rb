require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:sid) {double :sid}
  let(:james) {double :james}

  describe "#attack" do
    it "damages the player" do
      expect(james).to receive(:receive_damage)
      game.attack(james)
    end
  end
end
