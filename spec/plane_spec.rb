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

let(:plane) { Plane.new }
let(:airport) { Airport.new }

  it 'is flying when created' do
    expect(plane.status).to eq 'Flying'
  end

  it 'can land' do
    expect(plane.landed).to eq 'Landed'
  end

  it 'is landed after landing' do
    airport.land_plane(plane)
    expect(plane.landed).to eq 'Landed'
  end

  it 'can take off' do
    allow(airport.can_land).to receive(:false) {true}
    airport.land_plane(plane)
    allow(airport.can_take_off).to receive(:false) {true}
    expect(airport.can_take_off).to eq true
  end

  it 'is flying after take off' do
    allow(airport.can_land).to receive(:false) {true}
    airport.land_plane(plane)
    allow(airport.can_take_off).to receive(:false) {true}
    airport.take_off_plane(plane)
    expect(plane.flying).to eq 'Flying'
  end
end
