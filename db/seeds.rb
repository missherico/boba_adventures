# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = []
users << User.create(name: 'James', email: 'j1@aol.com', password: '123456', password_confirmation: '123456')
users << User.create(name: 'Sally', email: 'sally@aol.com', password: 'abcdefg', password_confirmation: 'abcdefg')
users << User.create(name: 'Horton', email: 'horton@morton.com', password: '123abc', password_confirmation: '123abc')
users << User.create(name: 'Irina', email: 'irina44@gmail.com', password: 'hotpotato', password_confirmation: 'hotpotato')


my_bobas = []
my_bobas << My_boba.create(yelp_id: 'good-earth-cafe-san-francisco-2')
my_bobas << My_boba.create(yelp_id: 'boba-guys-san-francisco-4')
my_bobas << My_boba.create(yelp_id: 'honeyberry-san-francisco-2')
my_bobas << My_boba.create(yelp_id: 'ten-rens-tea-san-francisco')
my_bobas << My_boba.create(yelp_id: 'super-cue-cafe-san-francisco')
my_bobas << My_boba.create(yelp_id: 'little-sweet-café-san-francisco-2')
my_bobas << My_boba.create(yelp_id: 'ten-ren-tea-san-francisco')
my_bobas << My_boba.create(yelp_id: 'bubbles-and-boba-san-francisco')
my_bobas << My_boba.create(yelp_id: 'tii-cafe-san-francisco')
my_bobas << My_boba.create(yelp_id: 'quickly-san-francisco-18')
my_bobas << My_boba.create(yelp_id: 'bb-tea-station-san-francisco')
my_bobas << My_boba.create(yelp_id: 'pineapple-kingdom-san-francisco')

neighborhoods = []
neighborhoods << Neighborhood.create(hood: 'Chinatown', city: 'San Francisco', state: 'CA')
neighborhoods << Neighborhood.create(hood: 'Parkside', city: 'San Francisco', state: 'CA')
neighborhoods << Neighborhood.create(hood: 'Civic Center', city: 'San Francisco', state: 'CA')
neighborhoods << Neighborhood.create(hood: 'SoMa', city: 'San Francisco', state: 'CA')


# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  hood       :string(255)
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime
#  updated_at :datetime
#
