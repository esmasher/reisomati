class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :hotel, :restaurant, :city, :attraction, :image, :hotels, :language, :population
  has_many :itineraries
  has_many :users, through: :itineraries
  has_many :hotels
end
