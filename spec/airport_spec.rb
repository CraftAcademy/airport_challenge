require 'airport'

# A plane currently in the airport can request to take off.
# No more planes can land at the airport if it's full.
# It's up to you how many planes can land in the airport
# and how that is implemented.

describe Airport do

  let(:airport) { Airport.new(3) }
  # let(:airplane) { Plane.new }

  it "creates a new airport with three planes in its hanger" do
    expect(airport).to be_a_kind_of(Airport)
    expect(airport.hanger.length).to eq(3)
    expect(airport.hanger.pop).to be_a_kind_of(Plane)
  end

  describe 'take off and release plane' do
    context 'when traffic_control == true' do
      it 'allow plane to take off and be released' do
        expect(airport.hanger.length).to eq(3)
        allow(airport).to receive(:traffic_control?) { true }
        airport.take_off
        expect(airport.hanger.length).to eq(2)
      end
    end
  end

  describe 'do NOT take off and release plane' do
    context 'when traffic_control == false' do
      it 'do NOT allow plane to take off or be released' do
        expect(airport.hanger.length).to eq(3)
        allow(airport).to receive(:traffic_control?) { false }
        airport.take_off
        expect(airport.hanger.length).to eq(3)
      end
    end
  end

  describe 'land and capture plane' do
    context 'if traffic_control? == true' do
      it 'allow plane to land and be parked' do
        expect(airport.hanger.length).to eq(3)
        airport.hanger.pop
        expect(airport.hanger.length).to eq(2)
        allow(airport).to receive(:traffic_control?) { true }
        airport.land
        expect(airport.hanger.length).to eq(3)
      end
    end
  end

  describe 'traffic control' do
    context 'when airport is full' do
      it 'do NOT allow plane to land' do
        expect(airport.hanger.length).to eq(3)
        airport.hanger.pop
        expect(airport.hanger.length).to eq(2)
        allow(airport).to receive(:hanger_has_room?) { false }
        airport.land
        expect(airport.hanger.length).to eq(2)
      end
    end

    context "when weather is stormy" do
      it "do NOT allow plane to land" do
        expect(airport.hanger.length).to eq(3)
        airport.hanger.pop
        expect(airport.hanger.length).to eq(2)
        allow(airport).to receive(:not_stormy?) { false }
        airport.land
        expect(airport.hanger.length).to eq(2)
      end
    end
  end
end
