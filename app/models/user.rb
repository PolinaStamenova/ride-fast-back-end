class User < ApplicationRecord
  validates :name, presence: true
  validates :username, uniqueness: true
  validates :email, email: true, uniqueness: true
end
