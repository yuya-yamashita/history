class DiaryTag < ApplicationRecord
  validates :diary_id, presence: true
  validates :tag_id, presence: true
  validates :diary_id, :uniqueness => {:scope => :tag_id}

  belongs_to :diary
	belongs_to :tag
end
