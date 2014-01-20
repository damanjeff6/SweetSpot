class Api::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.includes(:address, :reviews)

    render :json => @restaurants.to_json(:include => [:address, :reviews])
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      render :json => @restaurant
    else
      render :json => @restaurant.errors.full_messages, :status => 422
    end
  end
  #
  # def show
  #   @restaurant = Restaurant.find(params[:id])
  #   render :json => @restaurant
  # end
  #
  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   if @restaurant.update_attributes(params[:restaurant])
  #     render :json => @restaurant
  #   else
  #     render :json => @restaurant.errors.full_messages, :status => 422
  #   end
  # end

end
