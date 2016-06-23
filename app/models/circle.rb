class Circle < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  has_many :users
  has_many :posts
end
