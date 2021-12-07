class AddEventsPrices < ActiveRecord::Migration[6.1]
  def up
    add_column :events, :price_A, :decimal
    add_column :events, :price_B, :decimal
    add_column :events, :price_C, :decimal
    add_column :events, :price_D, :decimal
    add_column :events, :price_GC, :decimal
  end
end
