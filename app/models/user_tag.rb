class UserTag < ApplicationRecord
  validates :user_id, presence: true
  validates :tag_id, presence: true
  validates :count, presence: true
  validates :user_id, :uniqueness => {:scope => :tag_id}

  belongs_to :user
  belongs_to :tag
end
