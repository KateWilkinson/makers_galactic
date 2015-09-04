class AddFlightIdToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :flight, index: true, foreign_key: true
  end
end
