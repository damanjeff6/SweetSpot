class Api::CategoriesController < ApplicationController
  
  def index
    restaurant = Restaurant.find(params[:restaurant_id])
    render :json => restaurant.category
  end
  
  def create
    @category = Category.new(:restaurant_id => params[:restaurant_id])
    if @category.save
      render :json => @category
    else
      render :json => @category.errors.full_messages, :status => 422
    end
  end
end

