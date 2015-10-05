require 'airport'
require 'plane'

describe Airport do
  
  subject { Airport.new }
  subject { Plane.new }

   it "has a default capacity" do
    expect(airport.capacity).to eq 10
  end

  describe 'take off' do

    it 'send plane to take off' do
      allow(airport_with_plane).to receive(:stormy?).and_return(false)
      expect(plane).to receive(:take_off!)
      airport_with_plane.take_off(plane)
    end
    
    it 'releases a plane'

  end

  describe 'landing' do

    it 'can land a plane to land'
        
    allow(airport).to receive(:stormy?).and_return(false)
    expect(plane).to receive(:land!).and_return(plane)
    airport.land(plane)
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




