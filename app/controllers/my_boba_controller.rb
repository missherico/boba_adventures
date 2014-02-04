class MyBobaController < ApplicationController

  def search
  
    render :search
  end

  def results
    location = params[:location]
    @user_loc = (location[0]).to_s.upcase

    consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'
    keys = {consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret}
    yelp = YelpApi.new(keys)
  	
    results = yelp.search_by_term_and_category_filter_and_location('boba', 'bubbletea', @user_loc)

    @boba_locations = results['businesses']   
    @neighborhood_array = (results['businesses']).sort_by { |biz| biz["location"]['neighborhood']}
    @rated_array = (results['businesses']).sort_by { |biz| biz['rating']}

    render :results
  end

  def show
    @id = params[:yelp_id]
binding.pry
    consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'
    keys = {consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret}
    yelp = YelpApi.new(keys)

    

    @location = yelp.search_by_id(id)

    render my_boba_path

  end


private




end
