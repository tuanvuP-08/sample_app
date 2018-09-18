class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name,  presence: true,
    length: {maximum: Settings.user.name.max_len}
  validates :email, presence: true,
    length: {maximum: Settings.user.email.max_len},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: Settings.user.password.min_len}

  has_secure_password

  before_save{email.downcase!}
end
