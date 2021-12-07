class ChangeEvents < ActiveRecord::Migration[6.1]
  def up
    remove_column :events, :price_A
    remove_column :events, :price_B
    remove_column :events, :price_C
    remove_column :events, :price_GC
    remove_column :events, :price_D
  end
end
