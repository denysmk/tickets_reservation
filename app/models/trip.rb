class Trip < ApplicationRecord
  has_many :tickets
  resourcify
  def max_seats
    number_of_seats-tickets.count
  end
  def available_seats
    used_seats = tickets.map(&:seat_number)
    (1..max_seats).to_a - used_seats
  end

end
