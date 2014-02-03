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
