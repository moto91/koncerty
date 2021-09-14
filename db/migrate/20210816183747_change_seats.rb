class ChangeSeats < ActiveRecord::Migration[6.1]
  def up
    change_column :seats, :price, :string
  end
end
