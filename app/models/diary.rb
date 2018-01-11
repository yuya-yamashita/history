class Diary < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :diary_tags, dependent: :destroy
	has_many :tags, through: :diary_tag
end
