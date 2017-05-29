require 'rails_helper'

describe Trip do
  before(:all) do
    @trip = Trip.create(departure: "London", departure_time: Time.now, arrival: "Paris", arrival_time: Time.now, number_of_seats: 50)
  end

  it 'should have a matching departure' do
    expect(@trip.departure).to eq("London")
  end

  it 'number of seats should be updated' do
    @trip.update(number_of_seats: 60)
    expect(@trip.number_of_seats).to eq(60)
  end

end
