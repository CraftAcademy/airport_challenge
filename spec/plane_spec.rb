require 'plane'
require 'airport'

describe Plane do
  subject { Plane.new }

  it 'is flying when created' do
    expect(subject.status).to eq(Plane::DEFAULT_STATUS)   
  end

  it 'can land' do
    expect(subject).to respond_to(:land)
  end

  it 'is landed after landing' do 
    subject.land
    expect(subject).to be_landed
  end

  it 'can take off' do
    expect(subject).to respond_to (:take_off)
  end 

  it 'is flying after take off' do
    subject.take_off
    expect(subject).to be_took_off
  end 
end