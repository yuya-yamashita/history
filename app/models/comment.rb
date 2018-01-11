class Comment < ApplicationRecord
  validates :content, presence: true
  validates :diary_id, presence: true
  belongs_to :user
	belongs_to :diary
end
