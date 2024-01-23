class Post < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :comments

  validates :photo, :description, :user_id, presence: true
end
