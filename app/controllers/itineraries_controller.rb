class ItinerariesController < ApplicationController

    def index
        itineraries = Itinerary.all
        render json: itineraries, include: [:id, :user_id, :destination_id, :note, :date_time]
    end

end
