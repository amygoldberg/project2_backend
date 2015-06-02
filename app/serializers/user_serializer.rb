class UserSerializer < ActiveModel::Serializer

  #explicity list the resource attributes we want to expose via our API
  attributes :id, :name, :username, :password, :email, :picture_count

  has_many :pictures

  def picture_count
    object.pictures.count
  end

end
