class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :confirmed, presence: true
end