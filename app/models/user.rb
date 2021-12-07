class User < ApplicationRecord
    has_many :reservations
    validates :name, presence: true
    validates :username, uniqueness: true
    validates :email, email: true, uniqueness: true
end
