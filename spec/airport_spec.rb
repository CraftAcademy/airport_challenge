require 'airport'
require 'plane'

describe Airport do

  subject { Airport.new }
  let(:plane) { Plane.new }

  
  it 'has a default capacity' do
   expect(subject.capacity).to eq 10
  end
end

describe 'take off' do

  it 'send plane to take off' do
    allow(subject).to receive(:stormy?).and_return(false)
    expect(plane).to receive(:can_take_off)
    subject.take_off(plane)
  end

  it 'releases a plane' do
    plane.take_off(subject)
    expect(subject.release(:subject))
  end
end

describe 'landing' do

  it 'can land a plane to land' do
    allow(subject).to receive(:stormy?).and_return(false)
    airport.land(plane)
    expect(plane.landed?).to be(true)
  end
end


describe 'traffic control' do
  it 'does not allow a plane to land if its full' do
    expect(subject).to be ('full')
  end
end

describe 'weather' do

  it 'a plane cant take off when there is a storm' do
    plane =('landed')
    expect(subject).to receive ('stormy')
  end

  it 'plane cant land when there is a storm' do
    plane =('landing')
    expect(subject).to receive ('stormy')
  end
end









