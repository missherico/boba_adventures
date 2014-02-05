class AdventuresController < ApplicationController
include AdventuresHelper
  before_filter :signed_in_user, only: [:create, :new, :edit, :update]
  before_filter :check_adventure_owner, only: [:destroy, :update, :edit]
  
  def index
  end

  def new
    @user = current_user
    b = Bobalocations.last
    binding.pry    
    id = params[:yelp_id]


    consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'
    keys = {consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret}
    yelp = YelpApi.new(keys)

    @result = yelp.search_by_business_id(id)
    @rating = @result['rating_img_url']
    yelp_id = @result['id']
    hood = @result['location']['neighborhoods']

  	@adventure = Adventure.new
  end

  def create
  	new_adventure = params.require(:adventure).permit(:name, :description, :city, :state, :address, :cross_st1, :cross_st2)
    new_adventure[:user_id]= current_user.user_id
    @adventure = Adventure.create(new_adventure)

    render :show
  end

  def show
   id = params[:yelp_id]


binding.pry


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
