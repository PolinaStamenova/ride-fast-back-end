class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :city

  validates :user_id, presence: true
  validates :car_id, presence: true
  validates :city_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
