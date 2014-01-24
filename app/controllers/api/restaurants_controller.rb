class Api::RestaurantsController < ApplicationController

  def index
    if params[:address]
      @restaurants = Restaurant.joins(:address)
                               .includes(:address, :reviews, :pictures)
                               .where("Addresses.city = ?", params[:address][:city])
    else
      @restaurants = Restaurant.includes(:address, :reviews, :pictures)
    end

    render :json => @restaurants.to_json(:include => [:address, :reviews, :pictures])
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])

    if @restaurant.save
      render :json => @restaurant.to_json(:include => [:address, :reviews, :pictures])
    else
      render :json => @restaurant.errors.full_messages, :status => 422
    end
  end

  def show
    @restaurant = Restaurant.includes(:address, :reviews, :pictures)
                            .find(params[:id])
    render :json => @restaurant.to_json(:include => [:address, :reviews, :pictures])
  end
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
