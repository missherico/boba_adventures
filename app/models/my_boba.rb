# == Schema Information
#
# Table name: my_bobas
#
#  id            :integer          not null, primary key
#  yelp_id       :string(255)
#  name          :string(255)      not null
#  address       :text
#  city          :string(255)
#  state         :string(255)
#  phone         :string(255)
#  mobile_url    :string(255)
#  neighborhoods :text
#  created_at    :datetime
#  updated_at    :datetime
#  location      :string(255)
#

class MyBoba < ActiveRecord::Base



self.yelp_me


private

  def yelp_me
    consumer_key = 'pXI7O2w2TzCcH7ub3Di5Bw'
    consumer_secret = '-PlNCMY1YN1c0-Lh9H4xNWBSMh0'
    token = '7S78wEVuSybUcAc1legyfpGdPYyhsuAz'
    token_secret = 'A_vgIl-yVGp87fuPZvuyWeSXcEQ'

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

  end


  def save_yelp_id
    
  end


end
