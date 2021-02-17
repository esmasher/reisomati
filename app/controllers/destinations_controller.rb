class DestinationsController < ApplicationController

    def index
        destinations = Destination.all
        render json: destinations, include: [:city, :restaurant, :hotel, :image]
    end

    def show
        destination = Destination.find_by(id: params[:id])
        render json: destination
    end
end
