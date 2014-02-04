# == Schema Information
#
# Table name: adventures
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  cross_st1   :string(255)
#  address     :string(255)
#  city        :string(255)
#  state       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Adventure < ActiveRecord::Base
	belongs_to :user
end
