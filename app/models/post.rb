class Post < ApplicationRecord
	belongs_to :user
	mount_uploaders :images, ImagesUploader
end
