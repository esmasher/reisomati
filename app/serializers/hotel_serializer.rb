class HotelSerializer < ActiveModel::Serializer
  attributes :id, :rating, :name, :reviews
  has_one :destination
  has_many :reviews
end
