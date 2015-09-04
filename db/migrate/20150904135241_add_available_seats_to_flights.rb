class AddAvailableSeatsToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :available_seats, :integer
  end
end
