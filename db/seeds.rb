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
@amy_two = Rack::Test::UploadedFile.new(Rails.root + 'amy_2.jpg', 'image/jpg')
Picture.create!(image: @amy_two)
@amy_three = Rack::Test::UploadedFile.new(Rails.root + 'amy_3.jpg', 'image/jpg')
Picture.create!(image: @amy_three)

# @ashleigh = Rack::Test::UploadedFile.new(Rails.root + 'ashleigh.jpg', 'image/jpg')
# Picture.create!(image: @ashleigh)
# @ashleigh_two = Rack::Test::UploadedFile.new(Rails.root + 'ashleigh_2.jpg', 'image/jpg')
# Picture.create!(image: @ashleigh_two)

# @allison = Rack::Test::UploadedFile.new(Rails.root + 'allison.jpg', 'image/jpg')
# Picture.create!(image: @allison)
# @allison_two = Rack::Test::UploadedFile.new(Rails.root + 'allison_2.jpg', 'image/jpg')
# Picture.create!(image: @allison_two)

# https://s3.amazonaws.com/mygallery/large/2/westernwall.jpg
# ^this will be the path I use, with different image names at the very end

user_one = User.create!(name: 'amy goldberg', username: 'amygoldberg', password: 'goldberg', email: 'amykgoldberg@gmail.com')
user_one.pictures.create!(image: @amy)
user_one.pictures.create!(image: @amy_two)
user_one.pictures.create!(image: @amy_three)

# user_two = User.create!(name: 'ashleigh kades', username: 'ashleighkades', password: 'kades', email: 'ashleighkades@gmail.com')
# user_two.pictures.create!(image: @ashleigh)
# user_two.pictures.create!(image: @ashleigh_two)

# user_three = User.create!(name: 'allison doherty', username: 'allisondoherty', password: 'doherty', email: 'allisondoherty@gmail.com')
# user_three.pictures.create!(image: @allison)
# user_three.pictures.create!(image: @allison_two)




