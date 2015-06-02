# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#for paperclip/image testing purposes
@file = Rack::Test::UploadedFile.new(Rails.root + 'westernwall.jpg', 'image/jpg')

Picture.create!(image: @file)

# User.destroy_all

# user = User.create!(name: 'amy goldberg', username: 'amygoldberg', password: 'goldberg', email: 'amykgoldberg@gmail.com')
