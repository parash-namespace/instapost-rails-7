class User < ApplicationRecord
  has_secure_password
  has_one_attached :photo

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :email, presence: true, uniqueness: true

  acts_as_voter
end
