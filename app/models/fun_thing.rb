# == Schema Information
#
# Table name: fun_things
#
#  id           :integer          not null, primary key
#  activity     :string(255)
#  neighborhood :string(255)
#  cross_st1    :string(255)
#  cross_st2    :string(255)
#  insider_tip  :text
#  created_at   :datetime
#  updated_at   :datetime
#

class FunThing < ActiveRecord::Base
end