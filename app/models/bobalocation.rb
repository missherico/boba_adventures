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
  	consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'
    keys = {consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret}
    yelp = YelpApi.new(keys)
    
    @id = params[:yelp_id]
    location = yelp.search_by_id(id)


  end  	


end
