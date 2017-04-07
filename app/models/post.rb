class Post < ApplicationRecord
  has_many :comments
	belongs_to :user
	has_many :comments
	mount_uploaders :images, ImagesUploader
	reverse_geocoded_by :latitude, :longitude do |obj, results| 
		if geo = results.first
			# byebug
			obj.location = "#{geo.city}, #{geo.state}"
		end
	end
	# reverse_geocoded_by :latitude, :longitude, :address => :location
	after_validation :reverse_geocode  # auto-fetch address
end
