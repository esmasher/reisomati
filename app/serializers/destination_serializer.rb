class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :hotel, :restaurant, :city, :attraction, :image
  has_many :itineraries
  has_many :users, through: :itineraries
  has_many :restaurants
end
