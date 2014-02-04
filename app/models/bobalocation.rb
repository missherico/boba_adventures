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
end
