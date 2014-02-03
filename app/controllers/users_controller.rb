class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new()
  end

  def show
  end

  def create
    @user= User.new(params[:user])
    if @user.save
    	flash[:success] = "Welcome to boba nation."
    	sign_in @user
    	redirect_to @user
    else
    	render 'new'
    end
  end

  def update
  	@user = User.find(params[:id])
  	@user.update_attributes(params[:user])
  	render :show
  end

  def destroy
  end



end
