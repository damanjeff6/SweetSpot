class Api::PicturesController < ApplicationController

  def index
    restaurant = Restaurant.find(params[:restaurant_id])
    render :json => restaurant.pictures
  end

  def create
    @picture = Picture.new(params[:picture])
    @picture.photo = params[:photo]
    if @picture.save
      render :json => @picture
    else
      render :json => @picture.errors.full_messages, :status => 422
    end
  end
end
