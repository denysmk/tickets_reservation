json.extract! trip, :id, :departure, :departure_time, :arrival, :arrival_time, :number_of_seats, :created_at, :updated_at
json.url trip_url(trip, format: :json)
