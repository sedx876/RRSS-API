class User < ApplicationRecord
  has_secure_password
  has_many :books
  has_many :comments, through: :books
  has_many :friendships
  has_many :friends, :through => :friendships

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }
end
