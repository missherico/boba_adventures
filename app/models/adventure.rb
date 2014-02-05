# == Schema Information
#
# Table name: adventures
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  description     :text
#  cross_st1       :string(255)
#  address         :string(255)
#  city            :string(255)
#  state           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  cross_st2       :string(255)
#  user_id         :integer
#  bobalocation_id :integer
#

class Adventure < ActiveRecord::Base
	belongs_to :user
    has_many :bobalocations, through: :user
	has_many :neighborhoods


end
