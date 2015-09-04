class AddWindowPriceToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :window_price, :integer
  end
end
