class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title,  presence: true
  validates_length_of :title, :minimum => 1, :maximum => 20
  validates :body,  presence: true 
end
