class AdventuresController < ApplicationController
include AdventuresHelper
  before_filter :signed_in_user, only: [:create, :new, :edit, :update]
  before_filter :check_adventure_owner, only: [:destroy, :update, :edit]
  
  def index
  end

  def new
  	@adventure = Adventure.new
  end

  def create
  	new_adventure = params.require(:adventure).permit(:name, :description, :city, :state, :address, :cross_st1, :cross_st2)
    new_adventure[:user_id]= current_user.user_id
    @adventure = Adventure.create(new_adventure)

    render :show
  end

  def show
  	@adventure = Adventure.find(params[:id])
  end

  def edit
  	@adventure = Adventure.find(params[:id])
  end

  def update
    @adventure = current_user.adventures.where(:id => params[:id])
    @adventure.update_attributes(params[:adventure])

    render :show
  end

  def destroy
  	adventure = current_user.adventures.where(:id => params[:id])
  	adventure.delete
  	redirect_to(adventures_path)


  end

end
