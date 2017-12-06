class Comment < ApplicationRecord
  validates :comment_id, presence: true
  validates :comment, presence: true
  validates :diary_id, presence: true

  belongs_to :user
	belongs_to :diary
end
