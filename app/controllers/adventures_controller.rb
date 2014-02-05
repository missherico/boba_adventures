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
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
