class User < ApplicationRecord
  has_many :posts
  include Clearance::User
end
