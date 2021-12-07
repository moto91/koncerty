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
def write_json
    events_json = []
    Event.all.each do |event|
      event_json = {
        "id" => event.id,
        "start" => event.event_date,
        "end" => event.event_date,
        "title" => event.artist,
        "url" => "/events/#{event.id}"
      } 
      events_json << event_json
    end
    File.open("public/event.json","w") do |f|
      f.write(events_json.to_json)
    end 
  end
