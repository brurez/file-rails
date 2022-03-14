class User < ApplicationRecord
  has_many :image_posts

  has_secure_password
end
