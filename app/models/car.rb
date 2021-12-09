class Car < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :duration, presence: true
  validates :number_of_seats, presence: true
end
