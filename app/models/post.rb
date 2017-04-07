class Post < ApplicationRecord
  has_many :comments
	belongs_to :user
	has_many :comments
	mount_uploaders :images, ImagesUploader

	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode  # auto-fetch address
end
