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
  subject { Plane.new }
  let(:airport) { double(:airport, :can_take_off? => true, :can_land? => true) }
  
  it 'is flying when created' do
    expect(subject.flying?).to eq true
  end

  it 'can land if not landed' do
    subject.land(airport)
    allow(subject).to receive(:flying?).and_return(true)
    expect(subject.land(airport)).to eq 'Landed'
  end

  it 'is landed after landing' do
    subject.land(airport)
    expect(subject.landed?).to eq true
  end

  it 'can take off if not flying' do
    subject.land(airport)
    allow(subject).to receive(:landed?).and_return(true)
    expect(subject.take_off(airport)).to eq 'Took off'
  end

  it 'is flying after take off' do
    subject.flying = false
    subject.take_off(airport)
    expect(subject.flying?).to eq true
  end

end
