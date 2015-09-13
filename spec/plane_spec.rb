require 'plane'
require 'airport'

## Note these are just some guidelines!
## Feel free to write more tests!!

# When we create a new plane, it should be "flying",
# thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should
# be "landed"
#
# When the plane takes of from the airport, it should be "flying" again
#
# Think about your implementation - does it allow a plane to be "flying"
# and landed?
# Are you testing that?

describe Plane do

subject {Plane.new}
let(:airport) { Airport.new }

  before(:each) do
    allow(airport).to receive(:can_land).and_return true
    allow(airport).to receive(:can_take_off).and_return true
  end

  it 'is flying when created' do
    expect(subject.flying).to eq true
  end

  it 'can land' do
    airport.land(subject)
    expect(subject.flying).to eq false
  end

  it 'is landed after landing' do
    airport.land(subject)
      expect(subject.flying).to eq false
  end

  it 'can take off' do
    expect(airport.take_off(subject)).to eq 'Took off!'
    end

  it 'is flying after take off' do
    airport.take_off(subject)
      expect(subject.flying).to eq true
  end
end
