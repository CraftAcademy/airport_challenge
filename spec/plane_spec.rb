require 'plane'
require 'airport'

describe Plane do

  subject { Plane.new }
  let(:airport) { Airport.new }

  before(:each) do
    allow(airport).to receive(:can_land?).and_return true
    allow(airport).to receive(:can_take_off?).and_return true
  end

  it 'is flying when created' do
    expect(subject.flying).to eq true
  end

  it 'can land' do
    expect(subject.land(airport)).to eq 'Landed'
  end

  it 'is landed after landing' do
    subject.land(airport)
    expect(subject.flying).to eq false
  end

  it 'can take off' do
    subject.land(airport)
    expect(subject.take_off(airport)).to eq 'Took off!'
  end

  it 'is flying after take off' do
    subject.land(airport)
    subject.take_off(airport)
    expect(subject.flying).to eq true
  end
end
