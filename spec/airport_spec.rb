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
  subject { Airport.new }
  # let(:plane) { Plane.new (:plane)}

  describe 'take off' do

    before(:each) do
      allow(subject).to receive(:can_take_off).and_return true
    end

    before(:each) do
      allow(subject).to receive(:can_land).and_return true
    end

    it 'instructs a plane to take off' do
      expect(subject.take_off(plane)).to eq 'Sir, you can take off!'
    end 

    it 'releases a plane' do
      subject.release (plane)
      subject.take_off(plane)
    	expect(subject.docked_plane).to eq []
    end
  end 

  describe 'landing' do

    it 'instructs a plane to land' do
      subject.instruct_plane_to_land
      expect(subject).to instruct_a_plane_to_land
    end 

    it 'receives a plane' do
      subject.receive_plane
      expect(subject).to receive_a_plane
    end 
  end

  describe 'traffic control' do
    context 'when airport is full' do
      it 'does not allow a plane to land' do
        expect(subject).to 
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


      xit 'does not allow a plane to land' do

      end 
    end
  end
end