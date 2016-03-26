class User < ActiveRecord::Base
  validates_length_of :name, :minimum => 3, :maximum => 10
  validates_length_of :password, :minimum => 6, :maximum => 20
  validates :name, :uniqueness => { :case_sensitive => false }
  validates :name, :email, :password_digest , presence: true
  validates :password, confirmation: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, :uniqueness => { :case_sensitive => false }
  has_secure_password
  has_many :posts
  has_many :comments
  mount_uploader :avatar, AvatarUploader

end
