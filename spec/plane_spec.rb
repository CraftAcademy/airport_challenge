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
  

  xit 'is landed after landing'

  xit 'can take off'

  xit 'is flying after take off'

end
