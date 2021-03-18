class User < ApplicationRecord
  validates :username, presence: true
  validates :email, email: true, presence: true, uniqueness: true
  validates :password, presence: true
end
