class Post < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :user
  belongs_to :circle

end