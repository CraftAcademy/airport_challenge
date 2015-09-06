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

let(:plane) { Plane.new }
let(:airport) { Airport.new }

  describe 'take off' do
    it 'instructs a plane to take off' do
      airport.land_plane(plane)
      allow(airport.can_take_off).to receive(:false) {true}
      airport.take_off_plane(plane)
      expect(plane.status).to eq 'Flying'
    end

    xit 'releases a plane' do

    end

  describe 'landing' do
    it 'instructs a plane to land' do
      airport.land_plane(plane)
      expect(plane.status).to eq 'Landed'
    end

    it 'receives a plane' do
      airport.land_plane(plane)
      expect(airport.landed_planes).to include (plane)
    end
  end

  describe 'traffic control' do
    context 'when airport is full' do
      it 'does not allow a plane to land' do
        MAX_CAPACITY = 2
        airport.landed_planes.count >= MAX_CAPACITY
        expect(airport.airport_full?).to eq false

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

      end

      xit 'does not allow a plane to land'
    end
  end
end
end