class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  validates :email, presence: true, uniqueness: true
  # validates :user_name, presence: true, uniqueness: true
end
