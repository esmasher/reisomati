class Destination < ApplicationRecord
    has_many :itineraries
    has_many :users, through: :itineraries
    has_many :restaurants

    # hotel_array = [ "Adventure Sports", "Arts and Crafts" ]
end
