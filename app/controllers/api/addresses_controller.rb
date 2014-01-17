class Api::AddressesController < ApplicationController

  def show
    restaurant = Restaurant.find(params[:restaurant_id])
    render :json => restaurant.address
  end

  def create
    @address = Address.new(:restaurant_id => params[:restaurant_id])
    if @address.save
      render :json => @address
    else
      render :json => @address.errors.full_messages, :status => 422
    end
  end

end
