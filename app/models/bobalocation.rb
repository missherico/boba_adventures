# == Schema Information
#
# Table name: bobalocations
#
#  id         :integer          not null, primary key
#  yelp_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Bobalocation < ActiveRecord::Base
	has_many :users

	validates :yelp_id, uniqueness: true

  def self.load_yelp
  	consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'

    keys = {consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret}

    yelp = YelpApi.new(keys)  	
  end

  def self.save_a_location
    load_yelp
    
    @id = params[:yelp_id]
    location = yelp.search_by_id(@id)
    new_loc = Bobalocation.create(yelp_id: location['businesses']['id'])

  end  	

def save_search_to_db
    local_array = @result_array.each do |movie|
      id = movie["imdbID"]
      response = Typhoeus.get("http://www.omdbapi.com/", :params => {:i => id, :plot => "full"})
      result = JSON.parse(response.body)

      movie = Movie.create(title: result["Title"], year: result["Year"], imdb: result["imdbID"], full_plot: result["Plot"], pic_link: result["Poster"])
    end

  end




end
