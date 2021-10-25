class ReviewsController < ApplicationController

    def create
        review = Review.create(review_params)
        if review
            render json: review, status: :ok
        else
            render json: {errors: review.errors}, status: :unprocessable_entity
        end
    end

    def index
        render json: Review.all, status: :ok
    end


    private

    def review_params
        params.permit(:comment, :star_rating, :user_id, :product_id)
    end
end
