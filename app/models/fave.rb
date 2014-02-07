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
  has_many :boba_locations, through: :user

  validates_uniqueness_of :bobalocation_id, scope: [:user_id]
end
