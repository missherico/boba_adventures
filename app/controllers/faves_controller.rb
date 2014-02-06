class SiteController < ApplicationController
  before_filter :signed_in_user, only: [:create, :new, :edit, :update]

  def index
  	@faves = current_user.faves
  end

  def create

  	new_fave = params.require(:fave).permit(:bobalocation_id, :user_id)
  	    yelp_id = params[:yelp_id]

    new_fave[:user_id] = current_user.id
    new_fave[:yelp_id] = yelp_id
    Fave.create(new_fave)
    
    redirect_to user_faves_path(id)
  end

  def destroy
    fave = current_user.faves.find_by_id(params[:id])
  	id = current_user.id
    fave.delete
  	redirect_to user_faves_path(id)
  end

end