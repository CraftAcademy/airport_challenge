require 'plane'

describe Plane do

  it 'is flying' do
    plane = Plane.new
    expect(plane.flying?).to eq true
  end

  it 'can land' do
    plane.land
    expect.(plane.status).to eq :flying
  end

  it 'has a flying status when in the air' do
    plane
    plane.air
    expect(plane.plane_status).to eq('flying')
  end

  it 'is landed after landing'
  expect(:plane).to eq ('landing')
end
