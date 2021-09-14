class Event < ApplicationRecord
    def event_date_not_from_past
        if event_date < Date.today
        errors.add(:event_date, 'cannot be from the past')
        end
    end
validates :artist, :presence => true
validates :price_A, :presence => true
validates :price_B, :presence => true
validates :price_C, :presence => true
validates :price_D, :presence => true
validates :price_GC, :presence => true
validates :event_date, :presence => true
validate :event_date_not_from_past
has_many :tickets
end
