class Api::AddressesController < ApplicationController

  def show
    restaurant = Restaurant.find(params[:restaurant_id])
    render :json => restaurant.address
  end

end
