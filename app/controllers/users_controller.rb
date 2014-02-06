class UsersController < ApplicationController

  def new
  end

  def create
    new_user = params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
  end

  def show
    @user = User.find(params[:id])
  end

  def adventures
  	@user = User.find(params[:id])

  end



end
