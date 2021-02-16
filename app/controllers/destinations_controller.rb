class DestinationsController < ApplicationController

    def index
        destinations = Destination.all
        render json: destinations, include: [:city, :restaurant, :hotel]
    end
end
