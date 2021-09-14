class EventsChanges < ActiveRecord::Migration[6.1]

  def up
    remove_column :events, :price_low
    remove_column :events, :price_high
  end
end
