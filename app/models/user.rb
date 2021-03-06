class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 5 }
  has_many :diaries, dependent: :destroy
	has_many :user_tags, dependent: :destroy
	has_many :tags, through: :user_tags
  has_secure_password
end
