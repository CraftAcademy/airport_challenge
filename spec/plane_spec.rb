require 'plane.rb'



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
require 'plane.rb'
describe Plane do


it 'is flying when created' do
  plane1=Plane.new
  expect(plane1.flying?).to eq true

end

it 'can land' do
   plane1=Plane.new
   plane1.land
   expect(plane1.flying?).to eq false
end

  it 'is landed after landing' do
    plane1=Plane.new
    plane1.land
    expect(plane1.landed?).to eq true

  end

#  xit 'can take off'

#  xit 'is flying after take off'

end
