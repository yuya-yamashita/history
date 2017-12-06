class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 5 }
  validates :name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 5 }

  has_many: diary, dependent : destroy
	has_many: user_tag, dependent : destroy
	has_many: tag, through: : user_tag

  has_secure_password
end
