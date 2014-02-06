# == Schema Information
#
# Table name: faves
#
#  id              :integer          not null, primary key
#  bobalocation_id :integer
#  user_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Fave < ActiveRecord::Base

  belongs_to :user
  has_many :bobalocations, through: :user
end
