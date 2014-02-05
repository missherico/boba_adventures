# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  hood       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Neighborhood < ActiveRecord::Base

  belongs_to :adventure
  validates :hood, uniqueness: true


end
