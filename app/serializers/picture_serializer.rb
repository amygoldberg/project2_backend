class PictureSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :created_at, :updated_at, :image_file_name, :image_content_type, :image_file_size, :image_updated_at, :picture

  def picture
    "https://s3.amazonaws.com/mygallery/large/#{object.id}/#{object.image_file_name}"
  end

end
