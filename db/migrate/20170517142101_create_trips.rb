class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :departure
      t.datetime :departure_time
      t.string :arrival
      t.datetime :arrival_time
      t.integer :number_of_seats

      t.timestamps
    end
  end
end
