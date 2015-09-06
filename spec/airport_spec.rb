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
  #let(:plane) { Plane.new }
  subject { Airport.new }
  
  let(:plane) { subject.planes.first }
  
  it {is_expected.to respond_to :current_weather?}
  it {is_expected.to respond_to :can_land?}
  it {is_expected.to respond_to :full?}
  it {is_expected.to respond_to :can_take_off?}
  it {is_expected.to respond_to :release_plane}
  it {is_expected.to respond_to :receive_plane}
  
  describe 'take off' do
    before(:each) do
      allow(plane).to receive(:landed?).and_return(true)
      allow(subject).to receive(:can_take_off?).and_return(true)
    end

    it 'instructs a plane to take off' do
      expect(plane.take_off(subject)).to eq 'Took off'
    end

    it 'releases a plane' do 
      plane.take_off(subject)
      expect(subject.planes).to_not include plane
    end
        
  end

  describe 'landing' do   
    before(:each) do
      allow(plane).to receive(:flying?).and_return(true)
      allow(subject).to receive(:can_land?).and_return(true)
    end
    
    it 'instructs a plane to land' do
      expect(plane.land(subject)).to eq 'Landed'
    end

    it 'receives a plane' do 
      plane.land(subject)
      expect(subject.planes).to include plane
    end
  end

  describe 'traffic control' do
    context 'when airport is full' do
      before(:each) do
        allow(subject).to receive(:full?).and_return(true)
      end
      
      it 'does not allow a plane to land' do 
        expect(plane.land(subject)).to eq 'Not allowed to land'
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
      
      before(:each) do
        allow(subject.planes.first).to receive(:flying?).and_return(false)
        allow(subject).to receive(:current_weather?).and_return(:stormy)
      end
      it 'does not allow a plane to take off' do
        expect(subject.planes.first.take_off(subject)).to eq 'Not allowed to take off'
      end

      it 'does not allow a plane to land' do
         expect(subject.planes.first.land(subject)).to eq 'Not allowed to land'
      end
    end
  end
end
