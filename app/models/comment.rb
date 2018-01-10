class Comment < ApplicationRecord
  validates :comment_body, presence: true
  validates :diary_id, presence: true

  belongs_to :user
	belongs_to :diary
end
