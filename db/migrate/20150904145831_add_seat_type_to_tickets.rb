class AddSeatTypeToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :seat_type, :string
  end
end
