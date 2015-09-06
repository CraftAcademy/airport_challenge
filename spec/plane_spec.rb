require 'plane'
require 'airport'

describe Plane do
  subject { Plane.new }
  let(:airport) { double(:airport, :can_take_off? => true, :can_land? => true) }
  
  before(:each) do
    allow(airport).to receive(:release_plane) 
    allow(airport).to receive(:receive_plane)
  end
  
  it 'is landed when created' do
    expect(subject.flying?).to eq false
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
