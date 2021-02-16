class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :hotel, :restaurant, :city, :attraction
  has_many :itineraries
  has_many :users, through: :itineraries
end
