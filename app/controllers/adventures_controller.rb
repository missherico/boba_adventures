class AdventuresController < ApplicationController
include AdventuresHelper
  #before_filter :signed_in_user, only: [:create, :new, :edit, :update]
  #before_filter :check_adventure_owner, only: [:destroy, :update, :edit]
  
  def index
  end

  def new
    id = params[:yelp_id]
    @user = current_user
    location = Bobalocation.find_by_yelp_id(id)


    yelp = load_yelp

    @result = yelp.search_by_business_id(id)
    @rating = @result['rating_img_url']
    yelp_id = @result['id']
    hood = @result['location']['neighborhoods']

  	@adventure = Adventure.new
  end

  def create
    id = params[:yelp_id]
    location = Bobalocation.find_by_yelp_id(id)

  	new_adventure = params.require(:adventure).permit(:name, :description, :city, :state, :address, :cross_st1, :cross_st2)
    new_adventure
    new_adventure[:user_id]= current_user.id
    new_adventure[:bobalocation_id] = location.id
    adventure = Adventure.create(new_adventure)

    redirect_to show_adventure_path(id, adventure.id)
  end

  def show
  	@adventure = Adventure.find(params[:id])
  end

  def edit
  	@adventure = Adventure.find(params[:id])
  end

  def update
    @adventure = current_user.adventures.find_by_id(params[:id])
    upd_adv = params.require(:adventure).permit(:name, :description, :city, :state, :address, :cross_st1, :cross_st2, :user_id, :bobalocation_id)

    if @adventure.update_attributes(upd_adv)
      flash[:success] = "Adventure updated!"

      id = Bobalocation.find(@adventure.bobalocation_id)
      redirect_to show_adventure_path(id.id, @adventure.id)
    else
      render :edit
    end
  end

  def all
    all = Adventure.all
    @all = all.sort { |x,y| y <=> x}
    
  end

  def destroy
    adventure = current_user.adventures.find_by_id(params[:id])
  	id = current_user.id
    adventure.delete
  	redirect_to user_adventures_path(id)

  end

private

  def load_yelp  
    consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'
    keys = {consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret}
    yelp = YelpApi.new(keys)
  end 
  
end
