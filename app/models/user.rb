class User < ActiveRecord::Base
  has_secure_password
  has_many :posts, dependent: :destroy
  # validates :email, presence: true, uniqueness: true
  # validates :user_name, uniqueness: true
end
