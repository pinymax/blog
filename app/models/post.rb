class Post < ActiveRecord::Base
  validates :name, :email, :password_digest , presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title,  presence: true
end
