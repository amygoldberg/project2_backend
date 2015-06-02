# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

#for paperclip/image testing purposes
@amy = Rack::Test::UploadedFile.new(Rails.root + 'amy.jpg', 'image/jpg')
Picture.create!(image: @amy)

# https://s3.amazonaws.com/mygallery/large/2/westernwall.jpg
# ^this will be the path I use, with different image names at the very end

# User.destroy_all

user_one = User.create!(name: 'amy goldberg', username: 'amygoldberg', password: 'goldberg', email: 'amykgoldberg@gmail.com')
user_one.pictures.create!(image: @amy)


