class CreateSeats < ActiveRecord::Migration[6.1]
  def change
      create_table :seats do |t|
        t.string :seat_number
        t.decimal :price
      t.timestamps
    end
  end
end
