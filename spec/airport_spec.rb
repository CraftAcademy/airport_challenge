require 'airport'

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

  let(:plane) { Plane.new}
  subject{Airport.new}

  it {is_expected.to respond_to :weather?}
  it {is_expected.to respond_to :can_land?}
  it {is_expected.to respond_to :can_take_off?}
  it {is_expected.to respond_to :capacity}

  describe 'take off' do
    before(:each) do 
      allow(subject.planes.first).to receive(:flying?).and_return(false)
      allow(subject).to receive(:weather?).and_return(:sunny)
    end
  end

    it 'instructs a plane to take off' do
      expect(airport.planes.first.take_off).to eq true
    end

    xit 'releases a plane'
  

  describe 'landing' do
    xit 'instructs a plane to land'

    xit 'receives a plane'
  end

  describe 'traffic control' do
    context 'when airport is full' do
      xit 'does not allow a plane to land'
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
      xit 'does not allow a plane to take off'

      xit 'does not allow a plane to land'
    end
  end
end
