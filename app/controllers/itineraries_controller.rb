class ItinerariesController < ApplicationController

    def index
        itineraries = Itinerary.all
        render json: itineraries
    end

    def show
        itinerary = Itinerary.find_by(id: params[:id])
        render json: itinerary
    end

    def update
        itinerary = Itinerary.find_by(id: params[:id])
        itinerary.update(note: params[:note])
        render json: itinerary
    end

    def destroy
        itinerary = Itinerary.find_by(id: params[:id])
        itinerary.destroy(note: params[:note])
        render json: itinerary
    end
end
