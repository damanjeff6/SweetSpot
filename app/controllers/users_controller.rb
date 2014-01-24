class UsersController < ApplicationController
  before_filter :require_current_user!, :only => [:show]
  before_filter :require_no_current_user!, :only => [:create, :new]

  def create
    @user = User.new(params[:user])

    if @user.save
      self.current_user = @user
      redirect_to "/"
    else
      render :json => @user.errors.full_messages
    end
  end

  def new
    @user = User.new
  end

  def show
      @user = User.find(params[:id])
  end

  def update
    @user = current_user

    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :json => @user.errors.full_messages
    end
  end

end

