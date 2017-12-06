class Tag < ApplicationRecord
  validates :name, presence: true
  validates :diary_id, presence: true

  has_many: diary_tag_mst
	has_many: diary, through: : diary_tag
	has_many: user, through: : user_tag
end
