class Ticket < ApplicationRecord  
    def seat_from_database
        if seat_id_seq != "GC" && seat_id_seq != "MB" && Seat.find_by_seat_number(seat_id_seq).nil?
        errors.add(:seat_id_seq, 'there is no such seat number')
        end
    end
validates :name, :presence => true, :length=>{:minimum=>6}
validates :email_address, :presence => true
validates :seat_id_seq, :presence => true
validates :event_id, :presence => true
validates :price, :presence => true
validate :seat_from_database
belongs_to :event
belongs_to :user
has_many :seats
end
