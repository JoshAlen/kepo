class User < ApplicationRecord
  has_many :posts
  has_many :comments
  include Clearance::User

  # geocoded_by :address
  # after_validation :geocode, if: :address_changed?
end
