class Post < ApplicationRecord
  has_many :comments
	belongs_to :user
	has_many :comments
	mount_uploaders :images, ImagesUploader
end
