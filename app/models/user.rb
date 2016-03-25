class User < ActiveRecord::Base
  validates :name, :email, :password_digest , presence: true
  validates :password, confirmation: true
  validates :email, :uniqueness => { :case_sensitive => false }
  has_secure_password
  has_many :posts
  has_many :comments
  mount_uploader :avatar, AvatarUploader

end
