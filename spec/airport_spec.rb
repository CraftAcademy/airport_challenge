require 'airport'
require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do

subject {Airport.new}
let(:plane) { Plane.new }

  describe 'take off' do

    before(:each) do
      allow(subject).to receive(:can_take_off).and_return true
    end

    before(:each) do
      allow(subject).to receive(:can_land).and_return true
    end

    it 'instructs a plane to take off' do
      expect(subject.take_off_plane(plane)).to eq 'Took off!'
    end

    it 'releases a plane' do
      subject.land_plane(plane)
      subject.take_off_plane(plane)
      expect(subject.landed_planes).to eq []
    end
  end

  describe 'landing' do

    before(:each) do
      allow(subject).to receive(:can_land).and_return true
    end

    it 'instructs a plane to land' do
      subject.land_plane(plane)
      expect(plane.status).to eq 'Landed'
    end

    it 'receives a plane' do
      subject.land_plane(plane)
      expect(subject.landed_planes).to include (plane)
    end
  end

  describe 'traffic control' do

    context 'when airport is full' do
      it 'does not allow a plane to land' do
        allow(subject).to receive(:airport_full?).and_return true
        expect(subject.land_plane(plane)).to eq 'Cant land right now'
      end
    end

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'when weather conditions are stormy' do
      it 'does not allow a plane to take off' do
        allow(subject).to receive(:weather).and_return 'Stormy'
        expect(subject.can_take_off(plane)).to eq false
      end

      it 'does not allow a plane to land' do
        allow(subject).to receive(:weather).and_return 'Stormy'
        expect(subject.can_land(plane)).to eq false
      end
    end
  end
end