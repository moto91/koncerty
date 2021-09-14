class ChangeTickets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :seat, index:true, foreign_key:true
    add_column :tickets, :price_sector, :string
  end
end
