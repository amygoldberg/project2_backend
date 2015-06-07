class Picture < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image,
              :styles => { :large => "510x510#", :medium => "250x250#", :small  => "150x150>", :thumb => "100x100#"},
              :processors => [:thumbnail],
              storage: :s3,
              path: "/:style/:id/:filename",
              s3_credentials: {
                bucket: ENV['BUCKET'],
                :access_key_id => ENV['ACCESS_KEY_ID'],
                :secret_access_key => ENV['SECRET_ACCESS_KEY']}

  validates :image, presence: true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 100.megabytes
end
