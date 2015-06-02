class User < ActiveRecord::Base
  has_many :pictures, dependent: :destroy
end
