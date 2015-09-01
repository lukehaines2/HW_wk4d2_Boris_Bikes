require_relative './spec_helper'

describe Van do

  let(:van) { Van.new }

  it 'It should be built with no bikes in it' do
    expect(van.bike_count).to eq 0
  end









end
