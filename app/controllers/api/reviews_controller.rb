class Api::ReviewsController < ApplicationController
  def index
    restaurant = Restaurant.find(params[:restaurant_id])
    render :json => restaurant.reviews
  end

  def create
    @review = Review.new(params[:review])
    if @review.save
      render :json => @review
    else
      render :json => @review.errors.full_messages, :status => 422
    end
  end
end
