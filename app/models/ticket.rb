class Ticket < ApplicationRecord  
validates :name, :presence => true, :length=>{:minimum=>6}
validates :email_address, :presence => true
belongs_to :event
belongs_to :user
has_many :seats
end
