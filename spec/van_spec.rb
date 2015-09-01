require_relative './spec_helper'

describe Van do

  def fill_van van
    10.times { van.load(Bike.new) }
  end

  let(:van) { Van.new({capacity: 10}) }
  let(:bike) { Bike.new }
  let(:station) { DockingStation.new({capacity: 20}) }

  it 'It should be built with no bikes in it' do
    expect(van.bike_count).to eq 0
  end

  it 'should be able to load a bike' do
    van.load(bike)
    expect(van.bike_count).to eq 1
  end

  it 'Should be able to unload a bike' do
    van.load(bike)
    van.unload(bike)
    expect(van.bike_count).to eq 0
  end

  it 'should remove a bike from the station count' do
    station.release(bike)
    expect(station.bike_count).to eq 0
  end

  it 'van should know when it has reached capacity' do
    fill_van van
    expect(van.full?).to be true
  end

  it 'should not accept a bike if it\'s full' do
    fill_van van
    expect{van.load(bike)}.to raise_error 'Van is full'
  end

  it 'should only accept broken bikes - from available bikes list' do
    working_bike, broken_bike = Bike.new, Bike.new
    working_bike.break
    station.dock(working_bike)
    station.dock(broken_bike)

    expect(station.available_bikes).to eq [broken_bike]
  end



end
