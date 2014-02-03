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
#

class MyBoba < ActiveRecord::Base
end
