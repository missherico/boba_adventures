class MyBobaController < ApplicationController

  def search
  
    render :search
  end

  def results
    location = params[:location]
    @user_loc = (location[0]).to_s.upcase

    results = Bobalocation.get_results(@user_loc)
    
    @boba_locations = results['businesses']   
    @neighborhood_array = (results['businesses']).sort_by { |biz| biz["location"]['neighborhood']}
    @rated_array = (results['businesses']).sort_by { |biz| biz['rating']}

    render :results
  end

  def show
    id = params[:yelp_id]

    @result = Bobalocation.show_location(id)

    @rating = @result['rating_img_url']
    yelp_id = @result['id']
    hood = @result['location']['neighborhoods']

    unless hood.nil?
      @neighborhood = hood.join(" ")
    end
    


    Bobalocation.create(yelp_id: yelp_id)

    # gon.locations = Bobalocation.address(@result['location']['display_address'].to_s)
    
    render :show
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
