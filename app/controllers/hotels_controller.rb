class HotelsController < ApplicationController
    def index
        hotels = Hotel.all
        render json: hotels
    end

    def show
        hotel = Hotel.find_by(id: params[:id])
        render json: hotel
    end

    def update
        hotel = Hotel.find_by(id: params[:id])
        hotel.update(likes: params[:likes])
        render json: hotel
    end
    
    def create
        hotel = Hotel.create(name: params[:name], rating: params[:rating], destination_id: params[:destination_id])
        render json: hotel
    end

    def destroy
        hotel = Hotel.find_by(id: params[:id])
        hotel.destroy

        render json: { message: 'success' }
    end



end
