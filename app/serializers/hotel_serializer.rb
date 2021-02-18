class HotelSerializer < ActiveModel::Serializer
  attributes :id, :rating, :name, :reviews, :likes, :image
  has_one :destination
  has_many :reviews
end
