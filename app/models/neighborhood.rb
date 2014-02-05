# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  hood       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  city       :string(255)
#  state      :string(255)
#

class Neighborhood < ActiveRecord::Base

  has_and_belongs_to_many :adventures
  validates :hood, uniqueness: true


end
