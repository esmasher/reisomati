class ItinerariesController < ApplicationController

    def index
        itineraries = Itinerary.all
        render json: itineraries
    end

end
