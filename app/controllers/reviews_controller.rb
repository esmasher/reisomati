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
        review = Review.create
        render json: review
    end

    def delete
        review = Review.find_by(id: params[:id])
        render json: review
    end
end
