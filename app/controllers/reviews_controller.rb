class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find_by(id: params[:id])
        render json: review
    end

    def create
        review = Review.new(comment: params[:comment], hotel_id: params[:hotel_id].to_i)
        render json: review
    end

    def destroy
        review = Review.find_by(id: params[:id])
        review.destroy
        render json: review
    end
end
