require 'rails_helper'

describe Ticket do
  before(:all) do
    @user = User.create(email: "test@test.test", password: "testtest")
    @trip = Trip.create(departure: "London", departure_time: Time.now, arrival: "Paris", arrival_time: Time.now, number_of_seats: 50)
  end

  it 'count of ticket should decreases by 1' do
    Ticket.create(seat_number: 12, first_name: "John", last_name: "Smith", trip_id: @trip.id, user_id: @user.id)
    expect(@trip.available_seats.count).to eq(49)
  end
end