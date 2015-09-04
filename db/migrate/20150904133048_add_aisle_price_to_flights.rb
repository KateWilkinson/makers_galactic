class AddAislePriceToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :aisle_price, :integer
  end
end
