class Seat < ApplicationRecord
  has_many :events
  belongs_to :ticket
end
