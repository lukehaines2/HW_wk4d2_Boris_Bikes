require_relative './spec_helper'

describe Garage do

  let(:van) { Van.new({capacity: 10}) }
  let(:bike) { Bike.new }
  let(:garage) { Garage.new }

  it 'Should be empty with 0 bikes to start off with' do
    expect(garage.bike_count).to eq 0
  end


  # it 'Should load the broken bikes from van' do

  # end










end

# load 
# unload


# van
# load broken at station
# unload working bikes at sttaion
# unload broken at garage
# load working at garage