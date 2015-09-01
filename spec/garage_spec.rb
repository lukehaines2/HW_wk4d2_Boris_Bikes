require_relative './spec_helper'

describe Garage do

  def fill_garage garage
    25.times { garage.load(Bike.new) }
  end

  let(:van) { Van.new({capacity: 10}) }
  let(:bike) { Bike.new }
  let(:garage) { Garage.new({capacity: 25}) }

  it 'Should be empty with 0 bikes to start off with' do
    expect(garage.bike_count).to eq 0
  end

  it 'Should unload the broken bikes from van' do
    garage.unload(bike)
    expect(van.bike_count).to eq 0
  end

  it 'Should accept the bike into the garage' do
    garage.accept(bike)
    expect(garage.bike_count).to eq 1
  end

  it 'Fix the bikes at garage' do
    garage.fix(bike)
    expect(bike.broken?).to eq false
  end

  it 'Should load the fixed bikes back onto van' do
    # van.load.broken?
    van.load(bike)
    garage.unload(bike)
    expect(garage.bike_count).to eq 0
  end

  






end


# only fixed bikes loaded to van
# load 
# unload


# van
# load broken at station
# unload working bikes at sttaion
# unload broken at garage
# load working at garage