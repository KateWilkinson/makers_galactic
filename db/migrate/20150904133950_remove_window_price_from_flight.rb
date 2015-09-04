class RemoveWindowPriceFromFlight < ActiveRecord::Migration
  def change
    remove_column :flights, :window_price, :integer
  end
end
