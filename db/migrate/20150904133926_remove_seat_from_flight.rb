class RemoveSeatFromFlight < ActiveRecord::Migration
  def change
    remove_column :flights, :seat, :string
  end
end
