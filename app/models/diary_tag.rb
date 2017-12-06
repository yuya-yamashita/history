class DiaryTag < ApplicationRecord
  validates :diary_id, presence: true
  validates :tag_id, presence: true

  belongs_to :diary_id
	belongs_to :tag_id
end
