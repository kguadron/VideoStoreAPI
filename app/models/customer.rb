class Customer < ApplicationRecord
  validates :name, presence: true
  validates :registered_at, presence: true
  validates :postal_code, presence: true
  validates :phone, presence: true
  validates :movies_checked_out_count, presence: true

  has_many :rentals
  has_many :movies, through: :rentals
end
