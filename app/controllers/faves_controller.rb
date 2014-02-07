class FavesController < ApplicationController

  def create
    id = params[:user][:yelp_id]
    user_id = current_user.id
    location = Bobalocation.find_by_yelp_id(id)

    Fave.create(user_id: user_id, bobalocation_id: location.id)

    redirect_to user_path(current_user)    
  end


  def destroy
  end

end
