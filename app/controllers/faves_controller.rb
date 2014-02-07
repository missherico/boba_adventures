class FavesController < ApplicationController
 before_filter :authenticate_user!
 before_filter :user_signed_in?, only: [:create, :new, :edit, :update]

  def create
    id = params[:yelp_id]
    user_id = current_user.id
    location = Bobalocation.find_by_yelp_id(id)

    Fave.create(user_id: user_id, bobalocation_id: location.id)

    redirect_to user_path(current_user)    
  end


  def destroy
  end

end
