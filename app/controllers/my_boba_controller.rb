class MyBobaController < ApplicationController


  def index
    @my_boba = params[:search]
  end

  def show
  end

  def search
  
    render :search
  end

  def results
    location = params[:location]
    user_loc = (location[0]).to_s.upcase
binding.pry
    consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'

    keys = {consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret}

    yelp = YelpApi.new(keys)
  	
    @results = yelp.search_by_category_filter_and_location('bubbletea', user_loc)
binding.pry


    render :results
  end


  def new
  end

  def create
  end
 
  def update
  end

  def destroy
  end


end
