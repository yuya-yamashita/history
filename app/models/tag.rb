class Tag < ApplicationRecord
  validates :name, presence: true
  validates :diary_id, presence: true
  has_many :diary_tags
	has_many :diaries, through: :diary_tag
	has_many :users, through: :user_tag
end
