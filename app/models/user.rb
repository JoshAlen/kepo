class User < ApplicationRecord
  has_many :posts
  has_many :comments
  include Clearance::User
end
