require 'airport'

# Note these are just some guidelines!
# Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do

  let(:airport) { Airport.new(3) }
  let(:plane) { airport.hanger.pop }

  it "creates a new airport with a capacity of three planes" do
    expect(airport).to be_a_kind_of(Airport)
  end

  it "the airport's hanger contains three planes" do
    expect(airport.hanger.length).to eq(3)
    expect(plane).to be_a_kind_of(Plane)
  end

  describe 'take off' do
    xit 'instructs a plane to take off'

    xit 'releases a plane'
  end

  describe 'land' do
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
