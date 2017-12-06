class Diary < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true

  belongs_to :user
	has_many: comment, dependent : destroy
	has_many: diary_tag, dependent : destroy
	has_many: tag, through: : diary_tag
end
