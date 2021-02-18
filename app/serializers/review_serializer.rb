class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment
  has_one :hotel

end
