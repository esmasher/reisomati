class HotelSerializer < ActiveModel::Serializer
  attributes :id, :rating, :review, :name
  has_one :destination
end
