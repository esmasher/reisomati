class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :address, :phone_number, :email
  has_many :itineraries
  has_many :destinations,  through: :itineraries
end
