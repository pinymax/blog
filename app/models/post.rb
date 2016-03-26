class Post < ActiveRecord::Base
  validates :name, :email, :password_digest , presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title,  presence: true
  validates_length_of :title, :minimum => 1, :maximum => 20
  validates :body,  presence: true 
end
