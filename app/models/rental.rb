class Rental < ApplicationRecord
  belongs_to :movie
  belongs_to :customer

  validates :check_out, presence: true
  validates :due_date, presence: true
end
