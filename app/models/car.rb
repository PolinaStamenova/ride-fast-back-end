class Car < ApplicationRecord
  belongs_to :category
  has_many :reservations
  validates :name, presence: true
  validates :finance_fee, presence: true
  validates :purchase_fee, presence: true
  validates :amount_payable, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :category_id, presence: true
end
