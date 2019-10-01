require 'player'

describe Player do

    subject(:sid) { Player.new('Sid') }
    subject(:james) { Player.new('James') }

  describe "#name}" do
    it "returns name" do
      expect(sid.name).to eq 'Sid'
    end
  end

  describe "#hit_points" do
    it "returns hit points" do
      expect(sid.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#attack" do
    it "damages the player" do
      expect(james).to receive(:receive_damage)
      sid.attack(james)
    end
  end

  describe "#receive_damage" do
    it "reduces the players hit points" do
      expect {sid.receive_damage }.to change {sid.hit_points }.by(-10)
    end
  end
end
