class UserTag < ApplicationRecord
  validates :user_id, presence: true
  validates :tag_id, presence: true
  validates :count, presence: true

  belongs_to :user
  belongs_to :tag
end
