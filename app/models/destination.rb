class Destination < ApplicationRecord
    has_many :itineraries
    has_many :users, through: :itineraries
    has_many :hotels
end