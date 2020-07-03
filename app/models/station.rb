class Station < ApplicationRecord
    has_many :transport_events
    has_and_belongs_to_many :lines
    has_many :users, through: :favorites
end
