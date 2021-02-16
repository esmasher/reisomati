class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :destination_id, :note, :date_time
  belongs_to :user
  belongs_to :destination
end
