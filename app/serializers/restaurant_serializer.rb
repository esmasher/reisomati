class RestaurantSerializer < ActiveModel::Serializer
belongs_to :destination
  attributes :id, :name, :cuisine, :review, :destination_id
end
