class AddMissingFildsToTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :seat_number, :integer
    add_column :tickets, :first_name, :string
    add_column :tickets, :last_name, :string
    add_reference :tickets, :user, foreign_key: true
    add_reference :tickets, :trip, foreign_key: true
  end
end
