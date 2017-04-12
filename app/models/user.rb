class User < ApplicationRecord
  acts_as_voter
  has_many :posts
  has_many :comments
  has_many :reports
  include Clearance::User

  # geocoded_by :address
  # after_validation :geocode, if: :address_changed?
end
